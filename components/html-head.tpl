<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="keywords" content="{{ page.keywords }}">
<meta name="description" content="{{ page.description }}">
<meta name="author" content="{{ site.author }}">

<meta property="fb:admins" content="1227335529"> <!--Site admin's Facebook user id -->
<meta property="og:title" content="{{ site.title }}">
<meta property="og:type" content="website">
<meta property="og:url" content="{{ site.url }}">
<meta property="og:image" content="{{ site.url }}/photos/tbw-esileht-th.jpg">
<meta property="og:site_name" content="{{ site.title }}">
<meta property="og:description" content="{{ description }}">
<!-- http://graph.facebook.com/username - Site admin's username -->

<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="/favicon.ico" type="image/ico">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="{{ images_path }}/apple-touch-icon.png">

{% stylesheet_link "fonts.css?2" %}
{% stylesheet_link "main.css?2" %}
<!--[if lt IE 9]>{% stylesheet_link "ie8.css?2" %}<![endif]-->

<script src="{{ javascripts_path }}/modernizr.custom.js"></script>

<!-- SITE TITLE -->
<title>{% if article %}{{ article.title }} | {{page.site_title}}{% else %}{{page.site_title}} | {{ page.title }}{% endif %}</title>