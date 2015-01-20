<style>
  {% comment %}/* Body background image */{% endcomment %}
  {% if front_page %}
    {% if fallback_header_image != nil and header_bg.image == nil %}
      .header .background-image {
        background-image: url("{{ fallback_header_image }}");
      }
    {% else %}
      {% if header_bg.imageSizes != nil %}
        {% if header_bg.imageSizes == "" %}
          .header .background-image {
            background-image: none;
          }
        {% else %}
          {% for imageSize in page.data.header_bg.imageSizes %}
            {% if forloop.first %}
              .header .background-image {
                background-image: url("{{ imageSize.url }}");
              }
            {% elsif forloop.last %}
              {% break %}
            {% else %}
              @media screen and (max-width: {{ imageSize.width }}px) {
                .header .background-image {
                  background-image: url("{{ imageSize.url }}");
                }
              }
            {% endif %}
          {% endfor %}
        {% endif %}

      {% else %}
        {% assign bg_image_prefix = images_path | append: "/header-bg" %}

        .header .background-image {
          background-image: url("{{ bg_image_prefix }}.jpg");
        }

        @media screen and (max-width: 1280px) {
          .header .background-image {
            background-image: url("{{ bg_image_prefix }}_large.jpg");
          }
        }
      {% endif %}
    {% endif %}

    {% comment %}/* Body Background color */{% endcomment %}
    {% if fallback_header_color != nil and header_bg.color == nil %}
      .header .background-color {
        background-color: {{ fallback_header_color }};
      }
    {% else %}
      .header .background-color {
        background-color: {{ header_bg_color }};
      }
    {% endif %}
  {% endif %}

  /* Custom primary color styles */
  {% if site.data.primary %}
    .summary,
    .menu-btn .menu-stripe,
    .content-formatted .form_submit input {
      background-color: {{ site_primary_color }};
    }

    .menu-main .menu-link.active,
    .menu-main .menu-link.active:hover {
      border-bottom: solid 1px {{ site_primary_color }};
      box-shadow: inset 0 -3px 0 {{ site_primary_color }};
    }

    .menu-main .menu-link:hover {
      border-bottom: solid 1px rgba({{ site.data.primary.colorData.r }}, {{ site.data.primary.colorData.g }}, {{ site.data.primary.colorData.b }}, {% if site.data.primary.colorData.a > 0.25 %}{{ site.data.primary.colorData.a | minus: 0.2 }}{% else %}0.05{% endif %});
      box-shadow: inset 0 -3px 0 rgba({{ site.data.primary.colorData.r }}, {{ site.data.primary.colorData.g }}, {{ site.data.primary.colorData.b }}, {% if site.data.primary.colorData.a > 0.25 %}{{ site.data.primary.colorData.a | minus: 0.2 }}{% else %}0.05{% endif %});
    }

    @media screen and (max-width: 900px) {
      .menu-main.expanded .menu-link.active,
      .menu-main.expanded .menu-link.active:hover {
        color: {{ site_primary_color }};
      }
    }

    .content-formatted a,
    .menu-pagination .menu-item.active .menu-link,
    .menu-pagination .menu-item .menu-link:hover {
      color: {{ site_primary_color }};
    }

    .search-open-btn svg,
    .search-close-btn svg {
      fill: {{ site_primary_color }};
    }

    .content-formatted .form_submit input {
      background-color: {{ site_primary_color }};
    }

    .content-formatted .form_submit input:hover {
      background-color: rgba({{ site.data.primary.colorData.r }}, {{ site.data.primary.colorData.g }}, {{ site.data.primary.colorData.b }}, {% if site.data.primary.colorData.a > 0.25 %}{{ site.data.primary.colorData.a | minus: 0.2 }}{% else %}0.05{% endif %});
    }
  {% endif %}
</style>
