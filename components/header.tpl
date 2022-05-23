<header class="header{% if site.search.enabled %} search-enabled{% endif %} js-header">
  {% if header == 'content' %}
    {% if cover_image != '' or editmode %}
      {% if header_image != '' or editmode %}<div class="background-image stretch js-bgpicker-header-image"></div>{% endif %}
      {% if header_color != '' or editmode %}<div class="background-color stretch js-bgpicker-header-color"></div>{% endif %}
    {% endif %}
  {% endif %}

  <div class="header-top">
    <div class="wrap">
      <div class="header-left">
        <div class="header-title">{% unless editmode %}<a href="{{ site.root_item.url }}">{% endunless %}{% editable site.header %}{% unless editmode %}</a>{% endunless %}</div>
      </div>

      <div class="header-right">
        {% if site.search.enabled %}
          <button class="search-btn search-close-btn js-search-close-btn js-prevent-sideclick">
            <svg width="20px" height="20px" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
              <path d="M19.6,3.5 C19.6,3.5 12.9,10.2 12.9,10.2 C12.9,10.2 19.5,16.8 19.5,16.8 C20.2,17.5 20.2,18.8 19.5,19.5 C18.7,20.3 17.5,20.3 16.7,19.5 C16.7,19.5 10.2,13 10.2,13 C10.2,13 3.5,19.6 3.5,19.6 C2.8,20.4 1.5,20.4 0.8,19.6 C0,18.9 0,17.6 0.8,16.8 C0.8,16.8 7.4,10.2 7.4,10.2 C7.4,10.2 0.9,3.6 0.9,3.6 C0.1,2.9 0.1,1.6 0.9,0.9 C1.6,0.1 2.8,0.1 3.6,0.9 C3.6,0.9 10.1,7.4 10.1,7.4 C10.1,7.4 16.8,0.8 16.8,0.8 C17.6,0 18.8,0 19.6,0.8 C20.3,1.5 20.3,2.8 19.6,3.5 Z"></path>
            </svg>
          </button>

          <button class="search-btn search-open-btn js-search-open-btn js-prevent-sideclick">
            <svg width="20px" height="20px" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
              <path d="M20,18 C20,18 20,19 19,19 C19,20 18,20 18,20 C17,20 16,20 16,19 C16,19 12,15 12,15 C11,16 10,16 8,16 C4,16 0,13 0,8 C0,4 4,0 8,0 C13,0 16,4 16,8 C16,10 16,11 15,12 C15,12 19,16 19,16 C20,16 20,17 20,18 ZM8,2 C5,2 2,5 2,8 C2,12 5,14 8,14 C12,14 14,12 14,8 C14,5 12,2 8,2 Z"></path>
            </svg>
          </button>
        {% endif %}

        <nav class="menu-main js-menu-main js-popover js-prevent-sideclick">
          {% include "menu-level-1" %}
          {% if editmode or site.has_many_languages? %}
          <div class="menu-lang js-menu-lang js-prevent-sideclick {% if flags_state %}flags-enabled{% else %}flags-disabled{% endif %}">
            {% include "menu-lang" %}
          </div>
          {% endif %}
        </nav>

        {% include "search" %}

        <button class="menu-btn js-menu-btn js-btn js-prevent-sideclick">
          <span class="menu-stripe"></span>
          <span class="menu-stripe"></span>
          <span class="menu-stripe"></span>
        </button>

        {% if editmode or site.has_many_languages? %}
          <nav class="menu-lang js-menu-lang js-prevent-sideclick {% if flags_state %}flags-enabled{% else %}flags-disabled{% endif %}">
            <button class="menu-lang-btn js-menu-lang-btn lang-flag lang-flag-{{ page.language_code }}" data-lang-code="{{ page.language_locale }}" {{ edy_intro_add_lang }}>
              {% if editmode or flags_state == false %}
                <span class="lang-title">
                  {% for language in site.languages %}{% if language.selected? %}{{ language.title }}{% endif %}{% endfor %}
                  <span class="ico-popover-toggle">▼</span>
                </span>
              {% endif %}
            </button>
            <div class="menu-lang-popover js-menu-lang-popover js-popover">
              {% include "menu-lang" %}
            </div>
          </nav>
        {% endif %}

      </div>
    </div>
  </div>

  {% if header == 'content' %}
    <div class="header-bottom js-background-type {{ header_bg_type }}">
      {% if editmode %}<button class="vg-bg-picker-btn js-bgpicker-header-settings" {% unless header_bg_image == '' %}data-bg-image="{{ header_bg_image }}"{% endunless %} {% unless header_bg_image_sizes == '' %}data-bg-image-sizes="{{ header_bg_image_sizes_str | escape }}"{% endunless %} {% unless header_bg_color == nil or header_bg_color == 'rgba(255,255,255,0)' %}data-bg-color="{{ header_bg_color }}"{% endunless %} {% unless header_bg_color_data == nil %}data-bg-color-data="{{ header_bg_color_data_str | escape }}"{% endunless %}></button>{% endif %}

      <div class="header-bottom-inner">
        <div class="wrap">
          <div class="header-body content-formatted">
            {%- assign content_header_information = "content" | lce -%}
            {%- assign content_header_information_tooltip = "content_tooltip_important_information" | lce -%}
            {% content name="header" title=content_header_information title_tooltip=content_header_information_tooltip %}
          </div>
        </div>
      </div>
    </div>
  {% endif %}
</header>
