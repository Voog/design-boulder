:root {
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "padding",
    "editor": "rangePicker",
    "min": 0,
    "max": 200,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --content-button-padding: 24px;
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --content-button-font-size: 18px;
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --content-button-color: white;
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "background_color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  /*_LIQUID --content-button-background-color: {% if site.data.primary.color == nil %}#e4ac00{% else %}{{ site.data.primary.color }}{% endif %}; LIQUID_*/
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "700",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --content-button-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global"
  */
  --content-button-font-style: normal;
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "underline",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --content-button-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["button", "normal"],
    "titleI18n": "text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global"
  */
  --content-button-text-transform: none;
}