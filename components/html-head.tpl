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
{% stylesheet_link "main.min.css" %}
{% if editmode %}{% stylesheet_link "editmode.min.css" %}{% endif %}
<!--[if lt IE 9]>{% stylesheet_link "ie8.min.css" %}<![endif]-->

{% comment %}Custom fonts{% endcomment %}
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Fira+Sans:400,400italic,700,700italic|Lato:400,400italic,700,700italic|Montserrat:400,700|Open+Sans:400,400italic,700,700italic|Roboto:400,400italic,700,700italic|Source+Sans+Pro:400,400italic,700,700italic|Ubuntu:400,400italic,700,700italic|Arvo|Crimson+Text:400,400italic,700,700italic|Lora:400,400italic,700,700italic|Noto+Serif|Playfair+Display:400,400italic,700italic,700|PT+Serif:400,400italic,700,700italic|Roboto+Slab:400,700|Anonymous+Pro:400,400italic,700,700italic|Cousine:400,400italic,700,700italic|Roboto+Mono:400,400italic,700,700italic|Ubuntu+Mono:400,400italic,700,700italic&subset=latin,greek,cyrillic-ext,latin-ext,cyrillic,greek-ext,vietnamese,hebrew">

{% customstyle %}
  {% include "template-cs-main-styles" %}

  {% if front_page %}
    {% include "template-cs-focus-area-front" %}
  {% endif %}

  {% if content_page %}
  {% endif %}

  {% include "template-cs-header" %}
  {% include "template-cs-headings" %}
  {% include "template-cs-content" %}
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
{% capture page_title %}{% if article %}{{ article.title }}{% unless page.site_title == "" %} — {{ page.site_title }}{% endunless %}{% else %}{% if site.root_item.selected? and page.site_title != "" %}{{ page.site_title }}{% else %}{{ page.title }}{% unless page.site_title == "" %} — {{ page.site_title }}{% endunless %}{% endif %}{% endif %}{% endcapture %}
<title>{{ page_title }}</title>

{% comment %}FACEBOOK OPEN GRAPH META TAGS{% endcomment%}
{% include "open-graph" %}

{% comment %}MISCELLANEOUS{% endcomment %}
{% if blog %}{{ blog.rss_link }}{% endif %}
{{ site.stats_header }}
