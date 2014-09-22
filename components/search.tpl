{% if site.search.enabled %}
  <div class="search js-search js-popover">
    <form id="search" class="search-form js-search-form" method="get" action="#">
      <input id="onpage_search" class="search-input js-search-input" type="search" name="" placeholder="{{ 'search' | lc }}...">
    </form>

    <div class="voog-search-modal">
      <div class="voog-search-modal-inner js-voog-search-modal-inner"></div>
    </div>
  </div>
{% endif %}
