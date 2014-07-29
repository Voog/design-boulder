{% capture dont_render %}
  {% comment %}Sets cover color lightness class{% endcomment %}
  {% if page.data.cover_lightness == nil or page.data.cover_lightness <= 0.1 %}
    {% assign cover_color_class = 'dark-background' %}
  {% else %}
    {% assign cover_color_class = 'light-background' %}
  {% endif %}

  {% comment %}Sets the "front page" cover image and color values{% endcomment %}
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

  {% comment %}Builds style tag for background image{% endcomment %}
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

  {% comment %}Builds style tag for background color{% endcomment %}
  {% assign header_color_style = ' style="background-color: ' %}
  {% if page.data.header_color == '' %}
    {% assign header_color_style = header_color_style | append: 'transparent' %}
  {% else %}
    {% assign header_color_style = header_color_style | append: page.data.header_color %}
  {% endif %}
  {% assign header_color_style = header_color_style | append: ';"' %}

  {% comment %}Sets the boolean to check if at least one of the feature images is present{% endcomment %}
  {% assign feature_image_1 = page.data.feature_image_1.url %}
  {% assign feature_image_2 = page.data.feature_image_2.url %}

  {% if feature_image_1 == nil or feature_image_1 == '' %}
    {% assign has_feature_image_1 = false %}
  {% else %}
    {% assign has_feature_image_1 = true %}
  {% endif %}

  {% if feature_image_2 == nil or feature_image_2 == '' %}
    {% assign has_feature_image_2 = false %}
  {% else %}
    {% assign has_feature_image_2 = true %}
  {% endif %}

  {% if has_feature_image_1 == false and has_feature_image_2 == false %}
    {% assign has_feature_images = false %}
  {% else %}
    {% assign has_feature_images = true %}
  {% endif %}
{% endcapture %}
