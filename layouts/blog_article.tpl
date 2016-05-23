<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" blog_page: true %}
  {% include "edicy-tools-styles" %}
</head>

<body class="post-page content-page{% if editmode or site.has_many_languages? %} multilingual{% endif %}">
  <div class="container-wrap">
    <div class="container">
      {% include "header" %}
      {% include "tags-post" %}

      <main class="content" role="main">
        {% include "post-box" with "article" %}
      </main>

      <div class="comments content-formatted">
        <div class="wrap">
          <h2 class="comments-title">
          {% case article.comments_count %}
            {% when 0 %}{{ "write_first_comment" | lc }}
            {% else %}{{ 'post_has_replies' | lcc : article.comments_count }}
          {% endcase %}
          </h2>

          {% if article.comments_count > 0 %}
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

      {% include "footer" %}
    </div>
  </div>

  {% include "javascripts" %}
  {% include "edicy-tools" %}
  <script>site.initArticlePage();</script>
  <script src="{{ javascripts_path }}/placeholder.js"></script>
  <script>$('.js-placeholder').placeholder();</script>
</body>
</html>
