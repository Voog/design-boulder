<!DOCTYPE html>
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "html-head" %}
  {{ site.stats_header }}
</head>

<body class="common-page content-page{% if site.search.enabled %} search-enabled{% endif %}{% if editmode or site.has_many_languages? %} multilingual{% endif %}">


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
