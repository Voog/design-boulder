{% capture dont_render %}
  {% comment %}Sets cover color lightness class.{% endcomment %}
  {% assign header_opacity = page.data.header_opacity %}
  {% if header_opacity != nil and header_opacity != '' and header_opacity >= 0.1 %}
    {% if page.data.header_lightness == nil or page.data.header_lightness >= 0.2 %}
      {% assign header_color_class = ' light-background' %}
    {% else %}
      {% assign header_color_class = ' dark-background' %}
    {% endif %}
  {% else %}
    {% assign header_color_class = ' light-background' %}
  {% endif %}

  {% comment %}Sets the "front page" header image and color values.{% endcomment %}
  {% if page.data.header_image == nil %}
    {% assign header_image = images_path | append: '/header-bg.jpg' %}
  {% else %}
    {% assign header_image = page.data.header_image %}
  {% endif %}

  {% if page.data.header_color == nil %}
    {% assign header_color = 'rgba(0,0,0,0.16)' %}
  {% else %}
    {% assign header_color = page.data.header_color %}
  {% endif %}

  {% comment %}Builds style tag for the header background image.{% endcomment %}
  {% assign header_image_style = ' style="background-image: ' %}
  {% if header_image == '' %}
    {% assign header_image_style = header_image_style | append: 'none' %}
  {% else %}
    {% assign header_image_style = header_image_style | append: "url('" | append: header_image | append: "')" %}
  {% endif %}
  {% assign header_image_style = header_image_style | append: ';"' %}

  {% comment %}Builds style tag for the header background color.{% endcomment %}
  {% assign header_color_style = ' style="background-color: ' %}
  {% if header_color == '' %}
    {% assign header_color_style = header_color_style | append: 'transparent' %}
  {% else %}
    {% assign header_color_style = header_color_style | append: header_color %}
  {% endif %}
  {% assign header_color_style = header_color_style | append: ';"' %}

  {% comment %}Sets the default values for the header button{% endcomment %}
  {% if page.data.header_btn == nil %}
    {% for item in site.menuitems_with_hidden %}
      {% if forloop.index == 1 %}
        {% assign header_btn = item.url %}
        {% assign header_btn = '<a href="' | append: item.url | append: '">View our menu</a>' %}
        {% break %}
      {% endif %}
    {% endfor %}
  {% else %}
    {% assign header_btn = page.data.header_btn %}
  {% endif %}
{% endcapture %}
