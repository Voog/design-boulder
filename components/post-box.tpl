<article class="post">
  {% if post-box == "article" %}<div class="wrap{% if editmode or with_submenu == true %} with-submenu{% endif %}">{% endif %}
    <header class="post-header">
      {% if post-box == "article" %}
        <h1 class="post-title">{% editable article.title %}</h1>
      {% else %}
        <h2 class="post-title">
          <a href="{{ article.url }}">{{ article.title }}</a>
        </h2>
      {% endif %}
      {% assign article_year = article.created_at | format_date: "%Y" | to_num %}

      {% if article_year == current_year %}
        {% assign article_date_format = "long_without_year" %}
      {% else %}
        {% assign article_date_format = "long" %}
      {% endif %}

      <time class="post-date" datetime="{{ article.created_at | date: '%Y-%m-%d' }}">{{ article.created_at | format_date: article_date_format }}</time>
    </header>

    <div class="post-content">
      <div class="post-excerpt content-formatted" {{ edy_intro_edit_text }}>{% if post-box == "article" %}{% editable article.excerpt %}{% else %}{{ article.excerpt }}{% endif %}</div>

      {% if list_item %}
        <div class="post-readmore"><a class="post-read-more-btn" href="{{ article.url }}">{{ "read_more" | lc }}</a></div>
      {% endif %}

      {% if post-box == "article" %}
        <div class="post-body content-formatted">{% editable article.body %}</div>
        <div class="post-body content-formatted">
          {%- assign bottom_content_title = "additional_content" | lce -%}
          {%- assign bottom_content_title_tooltip = "content_tooltip_additional_information" | lce -%}
          {% content name="additional_body" bind="Article" title=bottom_content_title title_tooltip=bottom_content_title_tooltip %}
        </div>
      {% endif %}
    </div>
  {% if post-box == "article" %}</div>{% endif %}
</article>
