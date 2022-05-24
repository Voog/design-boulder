<footer class="footer js-footer">
  {% if blog and articles.size > 3 %}
    <div class="menu-pagination-wrap js-menu-pagination-wrap"></div>
  {% endif %}

  <div class="footer-inner">
    <div class="wrap">
      {%- assign footer_content_title = "footer" | lce -%}
      {%- assign footer_content_title_tooltip = "content_tooltip_all_pages_same_language" | lce -%}
      <div class="footer-left content-formatted">
        {% xcontent name="footer_title" title=footer_content_title title_tooltip=footer_content_title_tooltip %}
      </div>
      <div class="footer-right content-formatted js-custom-content-formatted">
        {% xcontent name="footer" title_tooltip=footer_content_title_tooltip %}
      </div>
      {% if page.private? %}
      <div class="signout-btn-margin"></div>
      {% endif %}
  </div>
    </div>
</footer>
