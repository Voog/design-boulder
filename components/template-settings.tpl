{%- capture template_settings_json -%}
  {% include 'template-settings-json' %}
{%- endcapture -%}

{%- assign template_settings = template_settings_json | replace: 'PREFIX', 'boulder' | json_parse -%}
