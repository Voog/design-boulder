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

    {% if items_page %}
      site.bindContentItemImgDropAreas('{{ "drag_picture_for_product_here" | lc: editor_locale | escape }}');
      site.bindContentItemImageCropToggle();

      {%if site.data.settings_root_item %}
        rootItemValuesObj = {{ site.data.settings_root_item | json }};
      {% else %}
        rootItemValuesObj = {};
      {% endif %};

      site.bindRootItemSettings(rootItemValuesObj);
    {% endif %}

    // Initiates language flag toggleing functionality.
    site.toggleFlags();

    {% if front_page %}
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
    {% endif %}

    site.bindCustomTexteditorStyles('{{ "button" | lc: editor_locale }}');
  </script>
{% endeditorjsblock %}
