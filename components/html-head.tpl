{% comment %}IE SETTINGS{% endcomment %}
<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->

{% comment %}META INFO{% endcomment %}
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">

{% comment %}FAV ICON{% endcomment %}
{% if site.has_favicon? %}
  <link rel="icon" href="/favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="/favicon.ico" type="image/ico">
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
{% endif %}
{% comment %}TODO: Add functionality after the CMS is going to support it{% endcomment %}
{% if site.data.touch_icon %}<link rel="apple-touch-icon" href="{{ site.data.touch_icon }}">{% endif %}

{% comment %}STYLESHEETS{% endcomment %}
{% if editmode %}
  <link href="{{ stylesheets_path }}/editmode.min.css?v={{ template_settings.version }}" media="screen" rel="stylesheet" type="text/css"/>
{% endif %}
{% if editmode %}<link rel="stylesheet" href="{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.css">{% endif %}
<link href="{{ stylesheets_path }}/main.min.css?v={{ template_settings.version }}" media="screen" rel="stylesheet" type="text/css"/>
<!--[if lt IE 9]>{% stylesheet_link "ie8.min.css?v=1" %}<![endif]-->

{% customstyle %}
  {% include "template-cs-main-styles" %}

  {% if front_page %}
    {% include "template-cs-focus-area-front" %}
  {% endif %}

  {% include "template-cs-header" %}
  {% include "template-cs-headings" %}

  {% if front_page %}
    {% include "template-cs-content-front" %}
    {% include "template-cs-blog-front" %}
  {% elsif blog_page %}
    {% include "template-cs-blog" %}
  {% elsif product_page %}
    {% include "template-cs-product" %}
    {% include "template-cs-content" %}
  {% else %}
    {% include "template-cs-content" %}
  {% endif %}

  {% include "template-cs-button" %}
  {% include "template-cs-list" %}
  {% include "template-cs-table" %}
  {% include "template-cs-form" %}


  {% include "template-cs-footer" %}

  {% include "template-cs-style-rules" %}
{% endcustomstyle %}

{% comment %}MODERNIZR - HTML5 SUPPORT FOR OLDER BROWSERS, SVG SUPPORT DETECTION ETC{% endcomment %}
<script src="{{ javascripts_path }}/modernizr-custom.min.js"></script>

{% comment %}SITE TITLE{% endcomment %}
<title>{% title %}</title>

{% comment %}MISC{% endcomment %}
{% include "template-meta" %}

{% comment %}BREADCRUMBS{% endcomment %}
{%- capture breadcrumbsScript -%}
  {%- sd_breadcrumbs -%}
{%- endcapture -%}
{{ breadcrumbsScript }}

{% comment %}MISCELLANEOUS{% endcomment %}
{% if blog %}{{ blog.rss_link }}{% endif %}
{{ site.stats_header }}
