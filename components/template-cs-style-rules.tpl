body {
  font-family: var(--main-font-family);
}

.content {
  background-color: var(--content-background-color);
}
.content-page .content .wrap {
  max-width: var(--content-max-width);
}

.summary {
  background-color: var(--secondary-color);
}

.content-formatted {
  font-size: var(--content-body-font-size);
  line-height: var(--content-body-line-height);
  color: var(--content-body-color);
}
.dark-background .content-formatted {
  color: var(--fourth-color);
}
.content-formatted.header-body {
  font-size: var(--focus-area-body-font-size);
  font-style: var(--focus-area-body-font-style);
  font-weight: var(--focus-area-body-font-weight);
  line-height: var(--focus-area-body-line-height);
  text-decoration: var(--focus-area-body-text-decoration);
  text-transform: var(--focus-area-body-text-transform);
}
.dark-background .content-formatted h1, .dark-background .content-formatted h2, .dark-background .content-formatted h3, .dark-background .content-formatted h4, .dark-background .content-formatted h5, .dark-background .content-formatted h6, .dark-background .content-formatted p, .dark-background .content-formatted ul, .dark-background .content-formatted ol, .dark-background .content-formatted pre, .dark-background .content-formatted code, .dark-background .content-formatted table {
  color: var(--fourth-color);
}
.content-formatted h1 {
  font-size: var(--headings-title-font-size);
  font-style: var(--headings-title-font-style);
  font-weight: var(--headings-title-font-weight);
  line-height: var(--headings-title-line-height);
  color: var(--headings-title-color);
  text-align: var(--headings-title-text-alignment);
  text-decoration: var(--headings-title-text-decoration);
  text-transform: var(--headings-title-text-transform);
}
.content-formatted h2 {
  font-size: var(--headings-heading-font-size);
  font-style: var(--headings-heading-font-style);
  font-weight: var(--headings-heading-font-weight);
  line-height: var(--headings-heading-line-height);
  color: var(--headings-heading-color);
  text-align: var(--headings-heading-text-alignment);
  text-decoration: var(--headings-heading-text-decoration);
  text-transform: var(--headings-heading-text-transform);
}
.content-formatted h3,
.content-formatted h4,
.content-formatted h5,
.content-formatted h6 {
  font-size: var(--headings-subheading-font-size);
  font-style: var(--headings-subheading-font-style);
  font-weight: var(--headings-subheading-font-weight);
  line-height: var(--headings-subheading-line-height);
  color: var(--headings-subheading-color);
  text-align: var(--headings-subheading-text-alignment);
  text-decoration: var(--headings-subheading-text-decoration);
  text-transform: var(--headings-subheading-text-transform);
}
.content-formatted a:not(.custom-btn) {
  font-style: var(--content-link-font-style);
  font-weight: var(--content-link-font-weight);
  color: var(--content-link-color);
  text-decoration: var(--content-link-text-decoration);
  text-transform: var(--content-link-text-transform);
}
.content-formatted a:not(.custom-btn):hover {
  font-style: var(--content-link-hover-font-style);
  font-weight: var(--content-link-hover-font-weight);
  color: var(--content-link-hover-color);
  text-decoration: var(--content-link-hover-text-decoration);
  text-transform: var(--content-link-hover-text-transform);
}
.content-formatted a.custom-btn {
  padding: calc(var(--content-button-padding) - 10px) var(--content-button-padding);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  color: var(--content-button-color);
  text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
  background-color: var(--content-button-background-color);
}
.content-formatted ul,
.content-formatted ol,
.content-formatted dl {
  font-size: var(--list-font-size);
  font-style: var(--list-font-style);
  font-weight: var(--list-font-weight);
  color: var(--list-color);
  text-decoration: var(--list-text-decoration);
  text-transform: var(--list-text-transform);
}
.content-formatted table tr th,
.content-formatted table tr td {
  padding: calc(var(--table-padding) - 4px) var(--table-padding);
  font-size: var(--table-font-size);
  border-top-style: var(--table-border-style);
}
.content-formatted table tr th:first-child,
.content-formatted table tr td:first-child {
  border-left-style: var(--table-border-style);
}
.content-formatted table tr th:last-child,
.content-formatted table tr td:last-child {
  border-right-style: var(--table-border-style);
}
.content-formatted table tr:last-child td {
  border-bottom-style: var(--table-border-style);
}

.menu-btn .menu-stripe {
  background-color: var(--secondary-color);
}

.menu-main .menu-link {
  font-size: var(--menu-main-font-size);
  font-style: var(--menu-main-font-style);
  font-weight: var(--menu-main-font-weight);
  color: var(--menu-main-color);
  text-transform: var(--menu-main-text-transform);
}
.menu-main .menu-link.active, .menu-main .menu-link:hover {
  border-bottom-color: var(--secondary-color);
  box-shadow: inset 0 -3px 0 var(--secondary-color);
}
.menu-main .menu-link:hover {
  font-style: var(--menu-main-hover-font-style);
  font-weight: var(--menu-main-hover-font-weight);
  color: var(--menu-main-hover-color);
  text-transform: var(--menu-main-hover-text-transform);
}
.menu-main .menu-link.active, .menu-main .menu-link.active:hover {
  font-style: var(--menu-main-active-font-style);
  font-weight: var(--menu-main-active-font-weight);
  color: var(--menu-main-active-color);
  text-transform: var(--menu-main-active-text-transform);
}
@media screen and (max-width: 900px) {
  .menu-main {
    display: none;
  }
  .menu-main.expanded .menu-link.active, .menu-main.expanded .menu-link.active:hover {
    color: var(--secondary-color);
  }
}

.menu-sub {
  background-color: var(--content-background-color);
}
.menu-sub .menu {
  text-align: right;
}
.menu-sub .menu-link {
  font-size: var(--menu-sub-font-size);
  font-style: var(--menu-sub-font-style);
  font-weight: var(--menu-sub-font-weight);
  color: var(--menu-sub-color);
  text-decoration: var(--menu-sub-text-decoration);
  text-transform: var(--menu-sub-text-transform);
}
.menu-sub .menu-link.active {
  font-style: var(--menu-sub-active-font-style);
  font-weight: var(--menu-sub-active-font-weight);
  color: var(--menu-sub-active-color);
  text-decoration: var(--menu-sub-active-text-decoration);
  text-transform: var(--menu-sub-active-text-transform);
}
.menu-sub .menu-link:not(.active):hover {
  font-style: var(--menu-sub-hover-font-style);
  font-weight: var(--menu-sub-hover-font-weight);
  color: var(--menu-sub-hover-color);
  text-decoration: var(--menu-sub-hover-text-decoration);
  text-transform: var(--menu-sub-hover-text-transform);
}

.menu-pagination .menu-item.disabled .menu-link:hover {
  color: var(--primary-color);
}
.menu-pagination .menu-item.active .menu-link {
  color: var(--secondary-color);
}
.menu-pagination .menu-item .menu-link {
  color: var(--primary-color);
}
.menu-pagination .menu-item .menu-link:hover {
  color: var(--secondary-color);
}

.header-title,
.header-title a {
  font-size: var(--header-body-font-size);
  font-style: var(--header-body-font-style);
  font-weight: var(--header-body-font-weight);
  color: var(--header-body-color);
  text-decoration: var(--header-body-text-decoration);
  text-transform: var(--header-body-text-transform);
}

.front-page .light-background .post-title, .front-page .dark-background .post-title {
  border-bottom-style: var(--blog-front-headings-border-bottom-style);
}
.front-page .light-background .post-title:hover, .front-page .dark-background .post-title:hover {
  font-style: var(--blog-front-headings-hover-font-style);
  font-weight: var(--blog-front-headings-hover-font-weight);
  text-transform: var(--blog-front-headings-hover-text-transform);
  border-bottom-style: var(--blog-front-headings-hover-border-bottom-style);
}
.front-page .light-background .blog-title,
.front-page .light-background .post-date {
  color: var(--primary-color);
}
.front-page .light-background .post-title, .front-page .light-background .post-title a {
  color: var(--primary-color);
}
.front-page .dark-background .post-title {
  border-bottom-color: var(--fourth-color);
}
.front-page .dark-background .post-title, .front-page .dark-background .post-title a {
  color: var(--fourth-color);
}
.front-page .blog-title {
  font-size: var(--blog-front-label-font-size);
  font-style: var(--blog-front-label-font-style);
  font-weight: var(--blog-front-label-font-weight);
  line-height: var(--blog-front-label-line-height);
  color: var(--fourth-color);
  text-decoration: var(--blog-front-label-text-decoration);
  text-transform: var(--blog-front-label-text-transform);
}
.front-page .post-title {
  font-size: var(--blog-front-headings-font-size);
  font-style: var(--blog-front-headings-font-style);
  font-weight: var(--blog-front-headings-font-weight);
  line-height: var(--blog-front-headings-line-height);
  text-transform: var(--blog-front-headings-text-transform);
  border-bottom-color: var(--primary-color);
}
.front-page .post-date {
  font-size: var(--blog-front-date-font-size);
  font-style: var(--blog-front-date-font-style);
  font-weight: var(--blog-front-date-font-weight);
  color: var(--fourth-color);
  text-decoration: var(--blog-front-date-text-decoration);
  text-transform: var(--blog-front-date-text-transform);
}

.blog-page .post-header,
.post-page .post-header {
  text-align: var(--blog-headings-text-alignment);
}
.blog-page .post-title,
.post-page .post-title {
  border-bottom: solid 1px var(--blog-headings-underline-color);
  box-shadow: inset 0 -3px 0 var(--blog-headings-underline-color);
}
.blog-page .post-title:hover,
.post-page .post-title:hover {
  border-bottom: solid 1px var(--blog-headings-hover-underline-color);
  box-shadow: inset 0 -3px 0 var(--blog-headings-hover-underline-color);
}
.blog-page .post-title, .blog-page .post-title a,
.post-page .post-title,
.post-page .post-title a {
  font-size: var(--blog-headings-font-size);
  font-style: var(--blog-headings-font-style);
  font-weight: var(--blog-headings-font-weight);
  line-height: var(--blog-headings-line-height);
  color: var(--blog-headings-color);
  text-transform: var(--blog-headings-text-transform);
}
.blog-page .post-title a:hover,
.post-page .post-title a:hover {
  font-style: var(--blog-headings-hover-font-style);
  font-weight: var(--blog-headings-hover-font-weight);
  color: var(--blog-headings-hover-color);
  text-transform: var(--blog-headings-hover-text-transform);
}
.blog-page .post-date,
.post-page .post-date {
  font-size: var(--blog-date-font-size);
  font-style: var(--blog-date-font-style);
  font-weight: var(--blog-date-font-weight);
  color: var(--blog-date-color);
  text-align: var(--blog-date-text-alignment);
  text-decoration: var(--blog-date-text-decoration);
  text-transform: var(--blog-date-text-transform);
}

.blog-page .post-content {
  max-width: var(--content-max-width);
}

.search-open-btn svg,
.search-close-btn svg {
  fill: var(--secondary-color);
}

.content-formatted .form_field .edy-fe-label,
.content-formatted .form_field .form_field_label {
  font-size: var(--form-label-font-size);
  font-style: var(--form-label-font-style);
  font-weight: var(--form-label-font-weight);
  color: var(--form-label-color);
  text-decoration: var(--form-label-text-decoration);
  text-transform: var(--form-label-text-transform);
}
.content-formatted .form_field_textfield,
.content-formatted .form_field_textarea,
.content-formatted .form_field_select,
.content-formatted .form_field_file,
.content-formatted .edy-fe-fieldinputs label,
.content-formatted .form_field label {
  font-style: var(--form-field-font-style);
  font-weight: var(--form-field-font-weight);
  color: var(--form-field-color);
  text-decoration: var(--form-field-text-decoration);
  text-transform: var(--form-field-text-transform);
}
.content-formatted .form_submit input {
  padding: calc(var(--content-button-padding) - 10px) var(--content-button-padding);
  font-size: var(--content-button-font-size);
  font-style: var(--content-button-font-style);
  font-weight: var(--content-button-font-weight);
  color: var(--content-button-color);
  text-decoration: var(--content-button-text-decoration);
  text-transform: var(--content-button-text-transform);
  background-color: var(--content-button-background-color);
}

.comments {
  background-color: var(--content-background-color);
}

.footer .content-formatted {
  font-size: var(--footer-body-font-size);
  font-style: var(--footer-body-font-style);
  font-weight: var(--footer-body-font-weight);
  color: var(--footer-body-color);
  text-decoration: var(--footer-body-text-decoration);
  text-transform: var(--footer-body-text-transform);
}

.footer-inner {
  background-color: var(--footer-body-background-color);
}
