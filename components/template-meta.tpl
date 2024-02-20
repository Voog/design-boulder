{% comment %}TEMPLATE META DATA{% endcomment %}
{% comment %}https://developers.facebook.com/tools/debug - Debug after each modification{% endcomment %}
{% if site.data.fb_admin %}<meta property="fb:admins" content="{{ site.data.fb_admin }}">{% endif %}

{%- if article -%}
  {%- assign og_obj = article -%}
{%- elsif product -%}
  {%- assign og_obj = product -%}
{%- else -%}
  {%- assign og_obj = page -%}
{%- endif -%}

<meta property="og:type" content="{% if article %}article{% else %}website{% endif %}">
<meta property="og:url" content="{{ site.url }}{{ og_obj.url | remove_first:'/' }}">
<meta property="og:title" content="{% title %}">
<meta property="og:site_name" content="{{ page.site_title | escape }}">

{% comment %}Open Graph image{% endcomment %}
{% if page.image == nil and front_page %}
  {% if fallback_header_image != blank and header_bg_image_sizes == nil %}
    {% assign og_image = fallback_header_image %}
  {% elsif header_bg_image_sizes != blank %}
    {% for imageSize in header_bg_image_sizes %}
      {% if forloop.length >= 4 %}
        {% assign og_image = header_bg_image_sizes[2] %}
        {% break %}
      {% else %}
        {% assign og_image = header_bg_image_sizes[0] %}
        {% break %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% else %}
  {% if og_obj.og_image? %}
    {% assign og_image = og_obj.og_image.for-width-1200 %}
  {% endif %}
{% endif %}

{% if og_image %}
  {% if og_image.url %}<meta property="og:image" content="{{ og_image.url }}">{% endif %}
  {% if og_image.content_type %}<meta property="og:image:type" content="{{ og_image.content_type }}">{% endif %}
  {% if og_image.width %}<meta property="og:image:width" content="{{ og_image.width }}">{% endif %}
  {% if og_image.height %}<meta property="og:image:height" content="{{ og_image.height }}">{% endif %}
{% endif %}

{% comment %}Open Graph description{% endcomment %}
{%- if og_obj.og_description != blank -%}
  <meta property="og:description" content="{{ og_obj.og_description | strip_html | escape_once }}">
  <meta name="description" content="{{ og_obj.og_description | strip_html | escape_once }}">
{%- endif -%}

{% comment %}SEO pagination for blog articles.{% endcomment %}
{% if article %}
  {% if article.older %}
    <link rel="prev" href="{{ article.older.url }}">
  {% endif %}

  {% if article.newer %}
    <link rel="next" href="{{ article.newer.url }}">
  {% endif %}
{% endif %}
