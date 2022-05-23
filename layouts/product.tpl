<!DOCTYPE html>
{%- include "template-settings" -%}
{%- include "template-variables" -%}

{% unless page.image %}
  {% assign page_image_state = "without-image" %}
{% else %}
  {% assign page_image_state = "with-image" %}

  {% if page.image.width > page.image.height %}
    {% assign page_image_orientation = "image-landscape" %}
  {% elsif page.image.width == page.image.height %}
    {% assign page_image_orientation = "image-square" %}
  {% else %}
    {% assign page_image_orientation = "image-portrait" %}
  {% endif %}

  {% if page.data.image_crop_state %}
    {% assign page_image_crop_state = page.data.image_crop_state %}
  {% else %}
    {% assign page_image_crop_state = "not-cropped" %}
  {% endif %}
{% endunless %}

<html class="{% if editmode %}editmode{% else %}public{% endif %}" lang="{{ page.language_code }}">
<head prefix="og: http://ogp.me/ns#">
  {% include "edicy-tools-variables" %}
  {% include "html-head" %}
  {% include "edicy-tools-styles" %}
</head>

<body class="item-page content-page{% if editmode or site.has_many_languages? %} multilingual{% endif %}">
  {% include "template-svg-spritesheet" %}

  <div class="container-wrap">
    <div class="container">
      {% include "header" %}
      {% if page.level != 0 %}
        {% include "submenu-for-current" exclude_products: true %}
      {% endif %}

      <main class="content content-formatted" role="main">
        <div class="wrap{% if editmode or with_sumbenu == true %} with-submenu{% endif %}">
          <section class="content-body content-formatted" {{ edy_intro_edit_text }}>
          {% include "menu-breadcrumbs" %}

            <div class="items-body">
              <div class="content-illustrations">
                {% if editmode %}
                  <div class="content-item-box {{ page_image_state }} js-content-item-box" data-item-type="page" data-item-id="{{ page.page_id }}">
                    <div class="item-top">
                      <button class="btn bg-crop-btn {% if page_image_orientation == "image-square" or page.image == nil %}is-hidden{% else %}is-visible{% endif %} js-toggle-crop-state">
                        <svg width="20" height="20" viewBox="0 0 28 28" xmlns="http://www.w3.org/2000/svg">
                          <use xlink:href="#ico-toggle"></use>
                        </svg>
                      </button>
                      <div class="loader js-loader"></div>
                      <div class="top-inner aspect-ratio-inner image-drop-area {{ page_image_orientation }} {{ page_image_crop_state }} js-content-item-img-drop-area" data-image="{{ page.image.for-width-680.schemeless_url }}"></div>
                    </div>
                  </div>
                {% else %}
                  {% if page.image %}
                    <div class="content-item-box {{ page_image_state }} js-content-item-box" href="{{ page.url }}">
                      <div class="item-top">
                        <div class="top-inner aspect-ratio-inner">
                          {% if page.image %}
                            <div class="loader js-loader"></div>
                            <img class="item-image {{ page_image_orientation }} {{ page_image_crop_state }} js-lazyload" data-original="{{ page.image.for-width-680.schemeless_url }}">
                          {% else %}
                            <div class="item-placeholder">{{ page.title | truncate: 50 }}</div>
                          {% endif %}
                        </div>
                      </div>
                    </div>
                  {% endif %}
                {% endif %}
                <div class="content-body formatted" data-search-indexing-allowed="true">
                  {%- assign gallery_title = "gallery" | lce -%}
                  {%- assign gallery_title_tooltip = "content_tooltip_additional_images" | lce -%}
                  {% content name="gallery" title=gallery_title title_tooltip=gallery_title_tooltip %}
                </div>
              </div>
              <div class="content-body">
                <header class="content-header">
                  <div class="content-formatted content-item-title" data-search-indexing-allowed="true">{% contentblock name="content_header_test" publish_default_content="true" %}<h1>{{ page.title }}</h1>{% endcontentblock %}</div>
                </header>
                <div class="content-formatted area-normal" data-search-indexing-allowed="true">
                  {%- assign content_default_title = "content" | lce -%}
                  {%- assign content_default_title_tooltip = "content_tooltip_specific_page" | lce -%}
                  {% contentblock title=content_default_title title_tooltip=content_default_title_tooltip %}
                    {{ "write_product_description_here" | lc: editor_locale }}
                  {% endcontentblock %}
                </div>
              </div>
            </div>
          </section>
        </div>
      </main>

      {% include "footer" %}
    </div>
  </div>

  {% include "site-signout" %}
  {% include "javascripts" %}
  {% include "edicy-tools" items_page: true %}
  <script>site.initItemsPage({% if editmode %}false{% else %}true{% endif %});</script>
</body>
</html>
