<header class="header">
  {% if header == 'content' %}
    {% if cover_image != '' or editmode %}
      {% if header_image != '' or editmode %}<div class="background-image stretch js-bgpicker-header-image"{{ header_image_style }}></div>{% endif %}
      {% if header_color != '' or editmode %}<div class="background-color stretch js-bgpicker-header-color"{{ header_color_style }}></div>{% endif %}
    {% endif %}
  {% endif %}

  <div class="header-top">
    <div class="wrap">
      <div class="header-left">
        <div class="header-title">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>

        <button class="menu-btn js-menu-btn">
          <span class="menu-stripe"></span>
          <span class="menu-stripe"></span>
          <span class="menu-stripe"></span>
        </button>
      </div>

      <div class="header-right">
        <nav class="menu-main js-menu-main js-popover">
          {% include "menu-level-1" %}
          {% if editmode or site.has_many_languages? %}
          <div class="menu-lang">
            {% include "menu-lang" %}
          </div>
          {% endif %}
        </nav>

        {% if site.search.enabled %}
          <div class="search">
            <form id="search" class="edys-search" method="get" action="#">
              <div class="search-left">
                <input id="onpage_search" class="edys-search-input" type="text" placeholder="Search" name="">
              </div>
              <div class="search-right">
                <input class="search-submit" type="submit" value="" name="">
              </div>
            </form>
            <div id="customsearch"></div>
          </div>
        {% endif %}

        {% if editmode or site.has_many_languages? %}
          <nav class="menu-lang">
            <button class="menu-lang-btn js-menu-lang-btn lang-flag {% for language in site.languages %}{% if language.selected? %}lang-flag-{{ language.code }}{% endif %}{% endfor %}">Choose language</button>
            <div class="menu-lang-popover js-menu-lang-popover js-popover">
              {% include "menu-lang" %}
            </div>
          </nav>
        {% endif %}

      </div>
    </div>
  </div>

  {% if header == 'content' %}
    <div class="header-bottom js-header-bottom dark-background">
      {% if editmode %}<button class="bgpicker-btn js-bgpicker-header-settings" data-bg-image="{{ header_image }}" data-bg-color="{{ header_color }}"></button>{% endif %}
      <div class="header-bottom-inner">
        <div class="wrap">
            <section class="header-body content-formatted">{% content name="header_content" %}</section>
            <button class="btn content-formatted">View our menu</button>
        </div>
      </div>
    </div>
  {% endif %}
</header>
