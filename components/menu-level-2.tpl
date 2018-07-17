<nav class="menu-sub">
  <div class="wrap">
    {% for item in site.all_menuitems_on_level_1 %}
      {% if item.selected? and page.level <= 2 %}
        {% if editmode or item.children? %}
          <ul class="menu">
            {% for level1 in item.visible_children %}
              {% if exclude_products == true and level1.layout_title != 'Product' and level1.layout_title != "Product list" %}
                <li class="menu-item">
                  <a href="{{level1.url}}" class="menu-link{% if level1.selected? %} active{% endif %}{% unless level1.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{level1.title}}</a>
                </li>
                {% elsif exclude_products != true %}
                <li class="menu-item">
                  <a href="{{level1.url}}" class="menu-link{% if level1.selected? %} active{% endif %}{% unless level1.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{level1.title}}</a>
                </li>
              {% endif %}
            {% endfor %}
            {% if editmode %}
              {% if item.hidden_children.size > 0 %}<li class="edy-btn">{% menubtn item.hidden_children %}</li>{% endif %}
              <li class="edy-btn">{% menuadd parent="item"%}</li>
            {% endif %}
          </ul>
        {% endif %}
      {% endif %}
    {% endfor %}

    {% for i in (2..5) %}
      {% assign level_str = 'all_menuitems_on_level_' | append: i %}
      {% for item in site[level_str] %}
        {% assign page_lvl = i | plus: 1 %}
        {% if item.selected? and page.level == page_lvl %}
          {% if editmode or item.children? %}
            {% if item.layout_title == 'Product' or item.layout_title == 'Product list' %}
              <ul class="menu">
                {% for child in item.visible_children %}
                  {% if exclude_products == true and child.layout_title != 'Product' and child.layout_title != "Product list" %}
                    <li class="menu-item">
                      <a href="{{child.url}}" class="menu-link{% if child.selected? %} active{% endif %}{% unless child.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{child.title}}</a>
                    </li>
                    {% elsif exclude_products != true %}
                    <li class="menu-item">
                      <a href="{{child.url}}" class="menu-link{% if child.selected? %} active{% endif %}{% unless child.translated? %} untranslated fci-editor-menuadd{% endunless %}">{{child.title}}</a>
                    </li>
                  {% endif %}
                {% endfor %}
              </ul>
            {% endif %}
          {% endif %}
        {% endif %}
      {% endfor %}
    {% endfor %}
  </div>
</nav>
