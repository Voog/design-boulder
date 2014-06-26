<article class="post">
  <header class="post-header">
    <h2 class="post-title">{% if post-box == "article" %}{% editable article.title %}{% else %}<a href="{{ article.url }}">{{ article.title }}</a>{% endif %}</h2>
    <time class="post-date" datetime="{{ article.created_at | date : "%Y-%m-%d" }}">{{ article.created_at | format_date : "long" }}</time>
  </header>

  <div class="post-content">
    <div class="post-excerpt content-formatted">{% if post-box == "article" %}{% editable article.excerpt %}{% else %}{{ article.excerpt }}{% endif %}</div>
    {% if post-box == "article" %}
      <div class="post-body content-formatted">{% editable article.body %}</div>
      {% include "tags-post" %}
    {% endif %}
  </div>
</article>
