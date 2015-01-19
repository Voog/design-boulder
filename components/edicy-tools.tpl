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


    // Basic color picker.
    var headerBg = new Edicy.BgPicker($('.js-bgpicker-site-primary-color-settings'), {
        picture: false,
        color: true,
        showAlpha: true,

      preview: function(data) {
        $('.js-summary').css('background-color', data.color);

            if (data.colorData.a >= 0.5) {
              $('.js-summary').addClass(data.colorData.lightness >= 0.5 ? 'light-background' : 'dark-background').removeClass(data.colorData.lightness >= 0.5 ? 'dark-background' : 'light-background');
            } else {
              $('.js-summary').addClass('light-background').removeClass('dark-background');
            };

        if ($(window).width() > 900) {
          $('.js-menu-main .menu-link.active').css({
            'border-bottom': '1px solid ' + data.color,
            'box-shadow': 'inset 0 -3px 0 ' + data.color
          });
        } else {
          $('.menu-btn .menu-stripe').css('background-color', data.color);
          $('.menu-main .menu-link.active').css('color', data.color);
        }
      },

      commit: function(data) {
        siteData.set({
          'primary_color': data.color || 'transparent',
          'primary_colorData': data.colorData || null
        });
      }
    });

  </script>
{% endeditorjsblock %}
