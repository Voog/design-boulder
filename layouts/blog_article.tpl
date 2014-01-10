<!DOCTYPE html>
<html lang="{{ page.language_code }}" class="full-height">
<head>
  {% include "html-head" %}
</head>

<body>
  <section class="site-content cfx">
    {% include "site-header" %}

    <main class="page-content cfx" role="main">
      <section class="content-container">
          <article class="post single">
            <header class="post-header">
              <h1 class="post-title">{% editable article.title %}</h1>
              <time datetime="{{ article.created_at | date : "%Y-%m-%d" }}" class="post-date">{{ article.created_at | date : "%b %d, %Y" }}</time>
            </header>
            <section class="post-excerpt">{% editable article.excerpt %}</section>
            {% unless editmode %}
              <figure class="post-image"><img src="{{ article.data.article_image }}"></figure>
            {% else %}
              <div class="post-image"><input type="text"></div>
            {% endunless %}
            <section class="post-body">{% editable article.body %}</section>
          </article>
      </section>
      <section class="comments-container">
        <section class="content-container">
          <div class="comments-wrap">
            <h2 class="comment-title">{% case article.comments_count %}{% when 0 %}{{"no_comments"|lc}}{% else %}{{"comments_for_count" | lc}}: <span class="edy-site-blog-comments-count">{{article.comments_count}}</span>{% endcase %}</h2>
            {% for comment in article.comments %}
              <div class="comment">
                <div class="comment-body">{{ comment.body }}</div>
                <div class="comment-author">{{ comment.author }}</div>
                <div class="comment-date">{{ comment.created_at | date : "%b %d, %Y" }})</div>
              </div>
            {% endfor %}
            {% include "comment-form" %}
          </div>
        </section>
      </section>
    </main>
    
    {% include "site-footer" %}
  </section>
  <script>project.initCommonPage();</script>
  {% if editmode %}
    <script>
      jQuery.ajax({
        type: 'PUT',
        dataType: "json",
        contentType: 'application/json',
        url: "/admin/api/articles/{{ article.id }}/data/article_image.json",
        data: JSON.stringify({value: '{{ photos_path }}/post-image.jpg'})
      });
    </script>
  {% endif %}
</body>
</html>