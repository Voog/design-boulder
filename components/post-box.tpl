<article class="post">
  <header class="post-header">
    <div class="post-header-top">
      <div class="wrap">
        {% if post-box == "article" %}
          <h1 class="post-title">{% editable article.title %}</h1>
        {% else %}
          <h2 class="post-title">
            <a href="{{ article.url }}">{{ article.title }}</a>
          </h2>
        {% endif %}
        <time class="post-date" datetime="{{ article.created_at | date : "%Y-%m-%d" }}">{{ article.created_at | format_date : "long" }}</time>
      </div>
    </div>
  </header>

  <div class="post-content">
    <div class="wrap">
      <div class="post-excerpt content-formatted">{% if post-box == "article" %}{% editable article.excerpt %}{% else %}{{ article.excerpt }}{% endif %}</div>
      {% if post-box == "article" %}
        <div class="post-body content-formatted">{% editable article.body %}</div>
      {% endif %}
    </div>
  </div>
</article>
