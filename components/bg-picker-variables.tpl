{% capture dont_render %}
  <!-- Sets cover color lightness class -->
  {% if page.data.cover_lightness == nil or page.data.cover_lightness <= 0.1 %}
    {% assign cover_color_class = 'dark-background' %}
  {% else %}
    {% assign cover_color_class = 'light-background' %}
  {% endif %}

  <!-- Sets the "front page" cover image and color values -->
  {% if page.data.header_image == nil %}
    {% assign header_image = images_path | append: '/header-bg.jpg' %}
  {% else %}
    {% assign header_image = page.data.header_image %}
  {% endif %}

  {% if page.data.header_color == nil %}
    {% assign header_color = 'rgba(51, 51, 51, 0.2)' %}
  {% else %}
    {% assign header_color = page.data.header_color %}
  {% endif %}

  <!-- Builds style tag for background image -->
  {% assign header_image_style = '' %}
  {% unless page.data.header_image == nil %}
    {% assign header_image_style = ' style="background-image: ' %}
    {% if page.data.header_image == '' %}
      {% assign header_image_style = header_image_style | append: 'none' %}
    {% else %}
      {% assign header_image_style = header_image_style | append: "url('" | append: page.data.header_image | append: "')" %}
    {% endif %}
    {% assign header_image_style = header_image_style | append: ';"' %}
  {% endunless %}

  <!-- Builds style tag for background color -->
  {% assign header_color_style = ' style="background-color: ' %}
  {% if page.data.header_color == '' %}
    {% assign header_color_style = header_color_style | append: 'transparent' %}
  {% else %}
    {% assign header_color_style = header_color_style | append: page.data.header_color %}
  {% endif %}
  {% assign header_color_style = header_color_style | append: ';"' %}
{% endcapture %}
