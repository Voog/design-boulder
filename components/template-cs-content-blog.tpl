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
    "titleI18n": "size",
    "editor": "rangePicker",
    "min": 8,
    "max": 80,
    "unit": "px",
    "scope": "global",
    "featured": true
  */
  --blog-list-headings-font-size: 24px;
  /* VoogStyle
     "pathI18n": ["blog", "title"],
     "titleI18n": "line_height",
     "editor": "rangePicker",
     "min": 0.8,
     "max": 3,
     "step": 0.1,
     "scope": "global"
  */
  --blog-list-headings-line-height: 1.7;
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
      "--blog-list-headings-hover-font-weight"
    ]
  */
  --blog-list-headings-font-weight: 400;
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
  --blog-list-headings-hover-font-weight: 400;
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
      "--blog-list-headings-hover-font-style"
    ]
  */
  --blog-list-headings-font-style: normal;
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
  --blog-list-headings-hover-font-style: normal;
  /* VoogStyle
    "pathI18n": ["blog", "title", "normal"],
    "titleI18n": "text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "solid",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global",
    "boundVariables": [
      "--blog-list-headings-hover-border-bottom-style"
    ]
  */
  --blog-list-headings-border-bottom-style: solid;
  /* VoogStyle
    "pathI18n": ["blog", "title", "hover"],
    "titleI18n": "text_decoration",
    "type": "button",
    "editor": "toggleIcon",
    "states": {
      "on": "solid",
      "off": "none"
    },
    "icon": "underline",
    "scope": "global"
  */
  --blog-list-headings-hover-border-bottom-style: none;
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
      "--blog-list-headings-hover-text-transform"
    ]
  */
  --blog-list-headings-text-transform: none;
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
  --blog-list-headings-hover-text-transform: none;
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
  --blog-list-date-font-size: 14px;
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
  --blog-list-date-font-weight: 400;
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
  --blog-list-date-font-style: normal;
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
  --blog-list-date-text-decoration: none;
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
  --blog-list-date-text-transform: none;
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
  --content-body-line-height: 1.7;
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
  --content-link-color: {% if site.data.primary.color == nil %}#e4ac00{% else %}{{ site.data.primary.color }}{% endif %};
  /* VoogStyle
    "pathI18n": ["blog", "link", "hover"],
    "titleI18n": "color",
    "type": "button",
    "editor": "colorPicker",
    "scope": "global"
  */
  --content-link-hover-color: {% if site.data.primary.color == nil %}#e4ac00{% else %}{{ site.data.primary.color }}{% endif %};
}
