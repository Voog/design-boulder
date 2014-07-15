<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
  {{ site.stats_header }}
</head>

<body class="post-page content-page">

  <div class="container">
    {% include "header" %}

    <main class="content js-content" role="main">
      <div class="wrap">
        {% include "post-box" with "article" %}
      </div>

      <div class="comments content-formatted">
        <div class="wrap">
          {% if article.comments_count > 0 %}
            <h2 class="comments-title"><span class="edy-site-blog-comments-count">{{ article.comments_count }} {{ "comments_for_count" | lc }}</span></h2>

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
  <script src="{{ javascripts_path }}/placeholder.js?1"></script>
  <script>$('.js-placeholder').placeholder();</script>
</body>
</html>
