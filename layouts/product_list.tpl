<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}
<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% assign items_page = true %}
  {% include "edicy-tools-variables" %}
  {% include "html-head" items_page: true %}
  {% include "edicy-tools-styles" %}
</head>

<body class="item-list-page content-page{% if editmode or site.has_many_languages? %} multilingual{% endif %}">
  {% include "template-svg-spritesheet" %}

  <div class="container-wrap">
    <div class="container">
      {% include "header" %}
      {% if page.level != 0 %}
        {% include "submenu-for-current" exclude_products: true %}
      {% endif %}

      <main class="content content-body content-formatted" role="main">
        <div class="wrap{% if editmode or with_sumbenu == true %} with-submenu{% endif %}">
          <div class="content-formatted intro-content" data-search-indexing-allowed="true">{% content %}</div>

          {% include "menu-breadcrumbs" %}
          <section class="content-item-boxes">
            {% if site.root_item.selected? %}
              {% for level_1 in site.visible_menuitems_with_data %}
                {% if level_1.layout_title == product_list_layout or level_1.layout_title == product_layout %}
                  {% include "product-list-item" menu_level: level_1 %}
                {% endif %}
              {% endfor %}
            {% else %}
              {% include "product-list-loop" %}
            {% endif %}
          </section>
        </div>
      </main>

      {% include "footer" %}
    </div>
  </div>

  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" items_page: true %}
  <script>site.initItemsPage();</script>
</body>
</html>
