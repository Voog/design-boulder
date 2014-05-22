
<header class="header">
  {% if site.root_item.selected? %}
    <div class="background-image js-bgpicker-header-image"{% if page.data.header_image %} style="background-image: url('{{ page.data.header_image}}');"{% endif %}></div>
    <div class="background-color js-bgpicker-header-color"{% if page.data.header_color %} style="background-color: {{ page.data.header_color }};{% if page.data.header_image %} opacity: 0.5;{% endif %}"{% endif %}></div>
  {% endif %}

  <div class="header-top">
    <div class="wrap">
      <section class="header-left">
        <div class="header-title">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>

        <button class="menu-btn js-menu-btn">
          <span class="menu-stripe"></span>
          <span class="menu-stripe"></span>
          <span class="menu-stripe"></span>
        </button>
      </section>

      <section class="header-right">
        <nav class="menu-main js-menu-main">
          {% include "menu-level-1" %}
          {% if editmode or site.has_many_languages? %}
          <div class="menu-lang">
            {% include "menu-lang" %}
          </div>
          {% endif %}
        </nav>

        {% if site.search.enabled %}
          <section class="search">
            <form id="search" class="edys-search" method="get" action="#">
              <div class="search-left">
                <input id="onpage_search" class="edys-search-input" type="text" placeholder="Search" name="">
              </div>
              <div class="search-right">
                <input class="search-submit" type="submit" value="" name="">
              </div>
            </form>
            <div id="customsearch"></div>
          </section>
        {% endif %}

        {% if editmode or site.has_many_languages? %}
          <nav class="menu-lang">
            <button class="menu-lang-btn js-menu-lang-btn lang-flag {% for language in site.languages %}{% if language.selected? %}lang-flag-{{ language.code }}{% endif %}{% endfor %}">Choose language</button>
            <div class="menu-lang-popover js-menu-lang-popover">
              {% include "menu-lang" %}
            </div>
          </nav>
        {% endif %}

      </section>
    </div>
  </div>

  {% if site.root_item.selected? %}
    <div class="header-bottom">
      {% if site.root_item.selected? %}{% if editmode %}<button class="bgpicker-btn js-bgpicker-body-settings" data-bg-image="{{ page.data.header_image }}" data-bg-color="{{ page.data.header_color }}"></button>{% endif %}{% endif %}
      <div class="header-bottom-inner">
        <div class="wrap">
            <section class="header-body content-formatted">{% content name="header_content" %}</section>
            <button class="btn content-formatted">View our menu</button>
        </div>
      </div>
    </div>
  {% endif %}
</header>
