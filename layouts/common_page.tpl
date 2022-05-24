<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}

<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" content_page: true %}
  {% include "edicy-tools-styles" %}
</head>

<body class="common-page content-page{% if editmode or site.has_many_languages? %} multilingual{% endif %}">
  <div class="container-wrap">
    <div class="container">
      {% include "header" %}
      {% include "menu-level-2" exclude_products: true %}

      <main class="content" role="main">
        <div class="wrap{% if editmode or with_sumbenu == true %} with-submenu{% endif %}">
          <section class="content-body content-formatted">
            {%- assign content_default_title = "content" | lce -%}
            {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}

            {% content title=content_default_title title_tooltip=content_default_title_tooltip %}
          </section>
        </div>
      </main>

      {% include "footer" %}
    </div>
  </div>

  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" %}
  <script type="text/javascript">site.initCommonPage();</script>
</body>
</html>
