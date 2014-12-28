<style>
  {% comment %}/* Body background image */{% endcomment %}
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
</style>
