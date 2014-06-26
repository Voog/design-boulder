<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head>
  {% include "html-head" %}

  <!-- FACEBOOK OPENGRAPH -->
  <!-- site specific opengraph tags are located in "html-head" component -->
  <meta property="og:url" content="{{ site.url }}">
  <meta property="og:title" content="{{ site.name }}">
  {% unless page.description == nil or page.description == "" %}<meta property="og:description" content="{{ page.description }}">{% endunless %}
  {% if page.data.fb_image %}<meta property="og:image" content="{{ site.url }}{{ photos_path }}/{{ page.data.fb_image }}">{% comment %}<!-- TODO: Add functionality -->{% endcomment %}{% endif %}
</head>

<body class="common-page">
  <div class="container">
    {% include "header" %}
    {% include "menu-level-2" %}

    <main class="content js-content" role="main">
      <section class="wrap">
        <section class="content-body content-formatted">{% content %}</section>
      </section>
    </main>

    {% include "footer" %}
  </div>

  {% include "javascripts" %}
  {% include "bg-picker" %}
</body>
</html>
