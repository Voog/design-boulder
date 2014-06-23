{% editorjsblock %}
  <script src='/assets/admin/tools/0.1.2/edicy-tools.js?1'></script>
  <script>
    // Front page header image and color data preview and save logic
    var pageData = new Edicy.CustomData({
      type: 'page',
      id: '{{ page.id }}'
    });

    var bgPickerHeader = new Edicy.BgPicker($('.js-bgpicker-header-settings'), {
      picture: true,
      color: true,

      preview: function(data) {
        var img = (data.image && data.image !== '') ? 'url("' + data.image + '")' : 'none',
            col = (data.color && data.color !== '') ? data.color : 'none';

        $('.js-bgpicker-header-color').css({'background' : col});

        if (data.image === null || data.image === '') {
          $('.js-bgpicker-header-image').css({'background-image': 'none'});
          $('.js-bgpicker-header-color').css({'opacity': 1});
        } else {
          $('.js-bgpicker-header-image').css({'background-image': data.image});
          $('.js-bgpicker-header-color').css({'opacity': 0.5});
        }
      },

      commit: function(data) {
        pageData.set({
          'header_image': data.image || '',
          'header_color': data.color || ''
        });
      }
    });
  </script>
{% endeditorjsblock %}
