{% editorjsblock %}
  <script src='/assets/admin/tools/0.1.3/edicy-tools.js?1'></script>
  <script>
    // Front page header image and color data preview and save logic.
    var pageData = new Edicy.CustomData({
      type: 'page',
      id: '{{ page.id }}'
    });

    var bgPickerHeader = new Edicy.BgPicker($('.js-bgpicker-header-settings'), {
      picture: true,
      color: true,
      showAlpha: true,

      preview: function(data) {
        var img = (data.image && data.image !== '') ? 'url(' + data.image + ')' : 'none',
            oldImg = $('.js-bgpicker-header-image').css('background-image'),
            opacity = data.colorData.a,
            col = (data.color && data.color !== '') ? data.color : 'transparent',
            colorData = (data.colorData && data.colorData !== '') ? data.colorData : '',
            lightness = colorData && colorData !== '' && colorData.lightness ? colorData.lightness : 0;

        // Resets background darkness classes.
        $('.js-header-bottom').removeClass('light-background dark-background');

        // Updades image only if it has been changed.
        if (oldImg !== img) {
          $('.js-bgpicker-header-image').css({'background-image' : img});
        }
        // Sets the background darkness class to content area parent element.
        if (opacity >= 0.2) {
          $('.js-header-bottom').addClass(lightness <= 0.2 ? 'dark-background' : 'light-background');
        } else {
          $('.js-header-bottom').addClass('light-background');
        }
        // Updates the background color.
        $('.js-bgpicker-header-color').css({'background-color' : col});
      },

      commit: function(data) {
        pageData.set({
          'header_image': data.image || '',
          'header_color': data.color || '',
          'cover_colorData' : data.colorData || '',
          'cover_lightness' : data.colorData && data.colorData != '' && data.colorData.lightness ? data.colorData.lightness : 0
        });
      }
    });
  </script>
{% endeditorjsblock %}
