{% comment %} TODO: Optimize the logic.{% endcomment %}
{% capture dont_render %}
  {% comment %}Assign language menu flags state{% endcomment %}
  {% if site.data.flags_state == nil %}
    {% assign flags_state = true %}
  {% else %}
    {% assign flags_state = site.data.flags_state %}
  {% endif %}

  {% comment %}Assign variables based on page type.{% endcomment %}
  {% assign fallback_header_image = page.data.header_image %}
  {% assign fallback_header_color = page.data.header_color %}
  {% assign fallback_header_colorData = page.data.header_colorData %}
  {% assign fallback_header_lightness = page.data.header_lightness %}

  {% assign header_bg = page.data.header_bg %}
  {% assign header_bg_image = header_bg.image %}
  {% assign header_bg_image_sizes = header_bg.imageSizes %}
  {% assign header_bg_color = header_bg.color %}
  {% assign header_bg_color_data = header_bg.colorData %}
  {% assign header_bg_combined_lightness = header_bg.combinedLightness %}

  {% comment %}Sets the body background type.{% endcomment %}
  {% if header_bg %}
    {% if header_bg_combined_lightness %}
      {% if header_bg_combined_lightness > 0.5 %}
        {% assign header_bg_type = 'light-background' %}
      {% else %}
        {% assign header_bg_type = 'dark-background' %}
      {% endif %}
    {% else %}
      {% if header_bg_color_data.a >= 0.5 %}
        {% if header_bg_color_data.lightness >= 0.5 %}
          {% assign header_bg_type = 'light-background' %}
        {% else %}
          {% assign header_bg_type = 'dark-background' %}
        {% endif %}
      {% else %}
        {% assign header_bg_type = 'light-background' %}
      {% endif %}
    {% endif %}
  {% else %}
    {% if fallback_header_colorData != nil and header_bg_color_data == nil %}
      {% if fallback_header_colorData.a >= 0.5 %}
        {% if fallback_header_lightness >= 0.5 %}
          {% assign header_bg_type = 'light-background' %}
        {% else %}
          {% assign header_bg_type = 'dark-background' %}
        {% endif %}
      {% else %}
        {% assign header_bg_type = 'light-background' %}
      {% endif %}
    {% else %}
      {% assign header_bg_type = 'dark-background' %}
    {% endif %}
  {% endif %}

  {% if fallback_header_image != nil and header_bg.image == nil %}
    {% assign header_bg_image = fallback_header_image %}
  {% else %}
    {% if header_bg_image == nil %}
      {% assign header_bg_image = images_path | append: '/header-bg_block.jpg' %}
    {% endif %}
  {% endif %}

  {% if fallback_header_image != nil and header_bg.image == nil %}
    {% assign header_bg_image_sizes_str = '[{"url": "' | append: fallback_header_image | append: '", "width": 0, "height": 0}]' %}
  {% else %}
    {% if header_bg_image_sizes == nil %}
      {% assign header_bg_image_sizes_str = '[{"url": "' | append: images_path | append: '/header-bg.jpg", "width": 2000, "height": 1333}, {"url": "' | append: images_path | append: '/header-bg_large.jpg", "width":1280, "height":853}, {"url": "' | append: images_path | append: '/header-bg_block.jpg", "width":500, "height":333}]' %}
    {% else %}
      {% assign header_bg_image_sizes_str = header_bg_image_sizes | json %}
    {% endif %}
  {% endif %}

  {% if fallback_header_color != nil and header_bg.color == nil %}
    {% assign header_bg_color = fallback_header_color %}
  {% else %}
    {% if header_bg_color == nil %}
      {% assign header_bg_color = 'rgba(0,0,0,0.2)' %}
    {% endif %}
  {% endif %}

  {% if header_bg_color_data == nil %}
    {% assign header_bg_color_data_str = '{"r": 0, "g": 0, "b": 0, "a": 0.2, "lightness": 0}' %}
  {% else %}
    {% assign header_bg_color_data_str = header_bg_color_data | json %}
  {% endif %}

  {% comment %}PRIMARY COLOR VARIABLES{% endcomment %}
  {% if site.data.primary.colorData.a >= 0.5 %}
    {% if site.data.primary.colorData.lightness >= 0.5 %}
      {% assign summary_background_type = 'light-background' %}
    {% else %}
      {% assign summary_background_type = 'dark-background' %}
    {% endif %}
  {% else %}
    {% assign summary_background_type = 'light-background' %}
  {% endif %}

  {% if site.data.primary.color != false %}
    {% assign site_primary_color = site.data.primary.color %}
    {% assign site_primary_color_rgb = 'rgb(' | append: site.data.primary.colorData.r | append: ',' | append: site.data.primary.colorData.g | append: ',' | append: site.data.primary.colorData.b  | append: ');' %}
    {% assign site_primary_color_rgb_hover = 'rgba(' | append: site.data.primary.colorData.r | append: ',' | append: site.data.primary.colorData.g | append: ',' | append: site.data.primary.colorData.b  | append: ',0.8);' %}
  {% else %}
    {% assign site_primary_color = 'rgb(228,172,0)' %}
  {% endif %}

  {% if site.data.primary.colorData != nil %}
    {% assign site_primary_color_data_str = '{"r": 228, "g": 172, "b": 0, "a": 1, "lightness": 0.67}' %}
  {% else %}
    {% assign site_primary_color_data_str = site.data.primary.colorData | json %}
  {% endif %}
{% endcapture %}
