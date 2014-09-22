{% comment %}FACEBOOK OPEN GRAPH META TAGS{% endcomment%}
{% comment %}https://developers.facebook.com/tools/debug - Debug after each modification{% endcomment %}
{% if site.data.fb_admin %}<meta property="fb:admins" content="{{ site.data.fb_admin }}">{% endif %}
<meta property="og:type" content="{% if article %}article{% else %}website{% endif %}">
<meta property="og:url" content="{{ site.url }}{% if article %}{{ article.url | remove_first:'/' }}{% else %}{{ page.url | remove_first:'/' }}{% endif %}">
<meta property="og:title" content="{{ page_title | escape }}">
<meta property="og:site_name" content="{{ page.site_title | escape }}">

{% comment %}Open Graph image{% endcomment %}
{% if front_page == true %}
  {% unless page.data.header_image == '' %}
    {% if page.data.header_image == nil %}
      <meta property="og:image" content="{{ site.url }}{{ header_image | remove_first: '/' }}">
    {% else %}
      <meta property="og:image" content="{{ header_image }}">
    {% endif %}
  {% endunless %}
{% else %}
  {% if article and article.data.fb_image %}
    <meta property="og:image" content="{{ article.data.fb_image }}">
  {% elsif page.data.fb_image %}
    <meta property="og:image" content="{{ page.data.fb_image }}">
  {% elsif site.data.fb_image %}
    <meta property="og:image" content="{{ site.data.fb_image }}">
  {% endif %}
{% endif %}

{% comment %}Open Graph description{% endcomment %}
{% if article %}
  {% assign excerpt_text = article.excerpt | strip_html | escape | strip_newlines | remove: " " | size %}
  {% assign excerpt_description = article.excerpt | strip_html | escape | strip_newlines | truncatewords: 200, '...'%}
{% elsif blog %}
  {% assign excerpt_text = articles.first.excerpt | strip_html | escape | strip_newlines | remove: " " | size %}
  {% assign excerpt_description = articles.first.excerpt | strip_html | escape | strip_newlines | truncatewords: 200, '...'%}
{% endif %}

{% if blog and excerpt_text > 0 %}
  <meta property="og:description" content="{{ excerpt_description }}">
  <meta name="description" content="{{ excerpt_description }}">
{% elsif page.description != nil and page.description != "" %}
  <meta property="og:description" content="{{ page.description }}">
  <meta name="description" content="{{ page.description }}">
{% endif %}