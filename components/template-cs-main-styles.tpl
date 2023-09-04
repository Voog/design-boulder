:root {
  /* VoogStyle
    "pathI18n": ["main_styles"],
    "titleI18n": "font",
    "editor": "listPicker",
    "list": {{ base_font_set }},
    "featured": true,
    "scope": "global"
  */
  --main-font-family: "Arvo", serif;
  /* VoogStyle
    "pathI18n": ["main_styles", "colors"],
    "titleI18n": "primary_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--header-body-color",
      "--headings-title-color",
      "--headings-heading-color",
      "--headings-subheading-color",
      "--list-color",
      "--menu-sub-color",
      "--content-body-color",
      "--form-label-color",
      "--form-field-color"
    ]
  */
  --primary-color: rgba(0, 0, 0, 0.73);
  /* VoogStyle
    "pathI18n": ["main_styles", "colors"],
    "titleI18n": "secondary_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--content-link-color",
      "--content-button-background-color"
    ]
  */
  --secondary-color: {% if site.data.primary.color == nil %}#e4ac00{% else %}{{ site.data.primary.color }}{% endif %};
  /* VoogStyle
    "pathI18n": ["main_styles", "colors"],
    "titleI18n": "third_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--footer-body-background-color"
    ]
  */
  --third-color: #454545;
  /* VoogStyle
    "pathI18n": ["main_styles", "colors"],
    "titleI18n": "fourth_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--content-button-color"
    ]
  */
  --fourth-color: white;
}