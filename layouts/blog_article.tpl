<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}

  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  <meta property="og:description" content="{{ page.description }}">{% comment %}<!-- TODO: Add correct value -->{% endcomment %}
  {% if page.data.fb_image %}<meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fb_image }}">{% endif %}
</head>

<body class="post-page">

  <div class="container">
    {% include "header" %}

    <main class="content js-content" role="main">
      <div class="wrap">
        {% include "post-box" with "article" %}

        <section id="comments" class="comments content-formatted">
          {% if article.comments_count > 0 %}
          <h2 class="comments-title"><span class="edy-site-blog-comments-count">{{ article.comments_count }}</span> {{ "comments_for_count" | lc }}</h2>

          <div class="comment-messages">
            {% for comment in article.comments reversed %}
            <div class="comment edy-site-blog-comment">
              <span class="comment-body">{{ comment.body_html }}</span>
              <span class="comment-info">
                <span class="comment-author">{{ comment.author }}, </span>
                <span class="comment-date">{{ comment.created_at | format_date: "long" }}</span>
              </span>
              {% removebutton %}
            </div>
            {% endfor %}
          </div>
          {% endif %}

          {% include "comment-form" %}
        </section>
      </div>
    </main>

    {% include "footer" %}

  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}
</body>
</html>
