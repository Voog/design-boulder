{% capture dont_render %}
  <!-- Sets the "front page" cover image and color values -->
  {% if page.data.header_image == nil %}
    {% assign header_image = images_path | append: '/header-bg.jpg' %}
  {% else %}
    {% assign header_image = page.data.header_image %}
  {% endif %}

  {% if page.data.header_color == nil %}
    {% assign header_color = 'rgb(0, 102, 187)' %}
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
  {% assign header_color_style = "" %}
  {% unless page.data.header_color == nil %}
    {% assign header_color_style = ' style="background: ' %}
    {% if page.data.header_color == '' %}
      {% assign header_color_style = header_color_style | append: 'none' %}
    {% else %}
      {% assign header_color_style = header_color_style | append: page.data.header_color %}
      {% if page.data.header_image == '' %}
        {% assign header_color_style = header_color_style | append: '; opacity: 1' %}
      {% else %}
        {% assign header_color_style = header_color_style | append: '; opacity: 0.25' %}
      {% endif %}
    {% endif %}
    {% assign header_color_style = header_color_style | append: ';"' %}
  {% endunless %}
{% endcapture %}
