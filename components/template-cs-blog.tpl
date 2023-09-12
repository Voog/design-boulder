:root {
  /* VoogStyle
    "pathI18n": ["blog"],
    "titleI18n": "maximum_width",
    "editor": "rangePicker",
    "min": 600,
    "max": 1000,
    "step": 1,
    "unit": "px",
    "scope": "global"
  */
  --content-max-width: 600px;
  /* VoogStyle
    "pathI18n": ["blog"],
    "titleI18n": "background_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --content-background-color: transparent;
  /* VoogStyle
    "pathI18n": ["blog", "title"],
    "titleI18n": "alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --blog-headings-text-alignment: center;
  /* VoogStyle
    "pathI18n": ["blog", "title"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-headings-font-size: 36px;
  /* VoogStyle
     "pathI18n": ["blog", "title"],
     "titleI18n": "line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "scope": "global"
  */
  --blog-headings-line-height: 1.2;
  /* VoogStyle
    "pathI18n": ["blog", "title", "normal"],
    "titleI18n": "font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "700",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--blog-headings-hover-font-weight"
    ]
  */
  --blog-headings-font-weight: 700;
  /* VoogStyle
    "pathI18n": ["blog", "title", "hover"],
    "titleI18n": "font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "700",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --blog-headings-hover-font-weight: 700;
  /* VoogStyle
    "pathI18n": ["blog", "title", "normal"],
    "titleI18n": "font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--blog-headings-hover-font-style"
    ]
  */
  --blog-headings-font-style: normal;
  /* VoogStyle
    "pathI18n": ["blog", "title", "hover"],
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
  --blog-headings-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["blog", "title", "normal"],
    "titleI18n": "color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --blog-headings-color: rgba(0, 0, 0, 0.73);
  /* VoogStyle
    "pathI18n": ["blog", "title", "hover"],
    "titleI18n": "color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --blog-headings-hover-color: rgba(0, 0, 0, 0.5);
  /* VoogStyle
    "pathI18n": ["blog", "title", "normal"],
    "titleI18n": "underline_color",
    "editor": "colorPicker",
    "scope": "global",
    "boundVariables": [
      "--blog-headings-hover-underline-color"
    ]
  */
  --blog-headings-underline-color: rgba(0, 0, 0, 0.23);
  /* VoogStyle
    "pathI18n": ["blog", "title", "hover"],
    "titleI18n": "underline_color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --blog-headings-hover-underline-color: rgba(0, 0, 0, 0.23);
  /* VoogStyle
    "pathI18n": ["blog", "title", "normal"],
    "titleI18n": "text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--blog-headings-hover-text-transform"
    ]
  */
  --blog-headings-text-transform: none;
  /* VoogStyle
    "pathI18n": ["blog", "title", "hover"],
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
  --blog-headings-hover-text-transform: none;
  /* VoogStyle
    "pathI18n": ["blog", "date"],
    "titleI18n": "alignment",
    "editor": "listPicker",
    "list": {{ base_alignment_set }},
    "scope": "global"
  */
  --blog-date-text-alignment: center;
  /* VoogStyle
    "pathI18n": ["blog", "date"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-date-font-size: 18px;
  /* VoogStyle
    "pathI18n": ["blog", "date"],
    "titleI18n": "color",
    "editor": "colorPicker",
    "scope": "global"
  */
  --blog-date-color: rgba(0, 0, 0, 0.23);
  /* VoogStyle
    "pathI18n": ["blog", "date"],
    "titleI18n": "font_weight",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "600",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global"
  */
  --blog-date-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["blog", "date"],
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
  --blog-date-font-style: normal;
  /* VoogStyle
    "pathI18n": ["blog", "date"],
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
  --blog-date-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["blog", "date"],
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
  --blog-date-text-transform: none;
  /* VoogStyle
    "pathI18n": ["blog", "text"],
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 100,
    "unit": "px",
    "featured": true,
    "scope": "global"
  */
  --content-body-font-size: 18px;
  /* VoogStyle
    "pathI18n": ["blog", "text"],
    "titleI18n": "line_height",
    "editor": "rangePicker",
    "min": 1,
    "max": 5,
    "step": 0.1,
    "unit": "",
    "scope": "global"
  */
  --content-body-line-height: 1.3;
  /* VoogStyle
    "pathI18n": ["blog", "text"],
    "titleI18n": "color",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global"
  */
  --content-body-color: rgba(0, 0, 0, 0.73);
  /* VoogStyle
    "pathI18n": ["blog", "link", "normal"],
    "titleI18n": "font_size",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "700",
      "off": "400"
    },
    "icon": "bold",
    "scope": "global",
    "boundVariables": [
      "--content-link-hover-font-weight"
    ]
  */
  --content-link-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["blog", "link", "hover"],
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
  --content-link-hover-font-weight: 400;
  /* VoogStyle
    "pathI18n": ["blog", "link", "normal"],
    "titleI18n": "font_style",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "italic",
      "off": "normal"
    },
    "icon": "italic",
    "scope": "global",
    "boundVariables": [
      "--content-link-hover-font-style"
    ]
  */
  --content-link-font-style: normal;
  /* VoogStyle
    "pathI18n": ["blog", "link", "hover"],
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
  --content-link-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["blog", "link", "normal"],
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
  --content-link-text-decoration: underline;
  /* VoogStyle
    "pathI18n": ["blog", "link", "hover"],
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
  --content-link-hover-text-decoration: none;
  /* VoogStyle
    "pathI18n": ["blog", "link", "normal"],
    "titleI18n": "text_transform",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "uppercase",
      "off": "none"
    },
    "icon": "uppercase",
    "scope": "global",
    "boundVariables": [
      "--content-link-hover-text-transform"
    ]
  */
  --content-link-text-transform: none;
  /* VoogStyle
    "pathI18n": ["blog", "link", "hover"],
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
  --content-link-hover-text-transform: none;
  /* VoogStyle
    "pathI18n": ["blog", "link", "normal"],
    "titleI18n": "color",
    "type": "button",
    "editor": "colorPicker",
    "featured": true,
    "scope": "global",
    "boundVariables": [
      "--content-link-hover-color"
    ]
  */
  /*_LIQUID --content-link-color: {% if site.data.primary.color == nil %}#e4ac00{% else %}{{ site.data.primary.color }}{% endif %}; LIQUID_*/
  /* VoogStyle
    "pathI18n": ["blog", "link", "hover"],
    "titleI18n": "color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  /*_LIQUID --content-link-hover-color: {% if site.data.primary.color == nil %}#e4ac00{% else %}{{ site.data.primary.color }}{% endif %}; LIQUID_*/
}