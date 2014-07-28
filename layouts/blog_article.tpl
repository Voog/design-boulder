<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
</head>

<body class="post-page content-page{% if site.search.enabled %} search-enabled{% endif %}{% if editmode or site.has_many_languages? %} multilingual{% endif %}">

  <div class="container">
    {% include "header" %}
    {% include "tags-post" %}

    <main class="content js-content" role="main">
      {% include "post-box" with "article" %}

      <div class="comments content-formatted">
        <div class="wrap">
          {% if article.comments_count > 0 %}
            <h2 class="comments-title">{{ 'post_has_replies' | lcc : article.comments_count }}</h2>

            <div class="comment-messages">
              {% for comment in article.comments %}
                <div class="comment edy-site-blog-comment">
                  <div class="comment-body">{{ comment.body_html }}</div>
                  <div class="comment-author">{{ comment.author }}</div>
                  <div class="comment-date">{{ comment.created_at | format_date: "long" }}{% removebutton %}</div>
                </div>
              {% endfor %}
            </div>
          {% endif %}

          {% include "comment-form" %}
        </div>
      </div>
    </main>

    {% include "footer" %}
  </div>

  {% include "javascripts" %}
  <script src="{{ javascripts_path }}/placeholder.js"></script>
  <script>$('.js-placeholder').placeholder();</script>
</body>
</html>
