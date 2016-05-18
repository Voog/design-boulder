{% editorjsblock %}
  <script src='{{ site.static_asset_host }}/libs/edicy-tools/latest/edicy-tools.js'></script>
  <script>
    var siteData = new Edicy.CustomData({
      type: 'site'
    });

    var pageData = new Edicy.CustomData({
      type: 'page',
      id: '{{ page.id }}'
    });

    // Initiates language flag toggleing functionality.
    site.toggleFlags();

    // Front page header banner background picker.
    var headerBg = new Edicy.BgPicker($('.js-bgpicker-header-settings'), {
        picture: true,
        target_width: 600,
        color: true,
        showAlpha: true,

      preview: function(data) {
        site.headerBgPreview(data, '.js-header');
      },

      commit: function(data) {
        site.headerBgCommit(data, 'header_bg');
      }
    });

    // Custom text styles
    window.edy = window.edy || [];
    edy.push(['texteditorStyles', {name: '{{ "button" | lc: editor_locale }}', tagname:'a', attribute: {'href': '#'}, classname: 'custom-btn', toggle: true}]);
  </script>
{% endeditorjsblock %}
