{% editorjsblock %}
  {% comment %}TODO: Replace with the original script if the CMS is going to support deleting the default pictures for the image drop areas.{% endcomment %}
  {% comment %}<script src='/assets/admin/tools/0.1.3/edicy-tools.js'></script>{% endcomment %}
  <script src="{{ javascripts_path }}/edicy-tools-custom.min.js"></script>
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
            col = (data.color && data.color !== '') ? data.color : 'transparent',
            opacity = (data.colorData && data.colorData !== '') ? data.colorData.a : '',
            colorData = (data.colorData && data.colorData !== '') ? data.colorData : '',
            lightness = colorData && colorData !== '' && colorData.lightness ? colorData.lightness : 0;

        // removes the current lightness class.
        $('.js-header-bottom').removeClass('light-background dark-background');
        // Checks the opacity of the header background color and sets the lightness class depending on it's value.
        if (opacity >= 0.1) {
          $('.js-header-bottom').addClass(lightness >= 0.2 ? 'light-background' : 'dark-background');
        } else {
          $('.js-header-bottom').addClass('light-background');
        }

        // Updades the header image only if it has been changed.
        if (oldImg !== img) {
          $('.js-bgpicker-header-image').css({'background-image' : img});
        }

        // Updates the header background color.
        $('.js-bgpicker-header-color').css({'background-color' : col});

      },

      commit: function(data) {
        pageData.set({
          'header_image': data.image || '',
          'header_color': data.color || '',
          'header_opacity': data.colorData.a || '',
          'header_colorData' : data.colorData || '',
          'header_lightness' : data.colorData && data.colorData != '' && data.colorData.lightness ? data.colorData.lightness : 0
        });
      }
    });

    // Feature image save logic
    /* TODO: Add functionality to add more or less than two images. */
    /* TODO: Add functionality to delete default images if the CMS is going to support it. */
    // var handleFeatureImage = function() {
    //   var imageIndex = window.imageIndex,
    //       featureImageIndex = 'js-feature-image-' + imageIndex,
    //       featureImageData = 'feature_image_' + imageIndex;

    //   var featureImage = new Edicy.ImgDropArea($('.' + featureImageIndex), {
    //     positionable: true,

    //     change: function(data) {
    //       featureImageContainer = $('.' + featureImageIndex).parent();

    //       var obj = {};
    //       obj[featureImageData] = data;
    //       pageData.set(obj);
    //     }
    //   });
    // };

    // var initFeatureImages = function() {
    //   $.each( $('.js-feature-image-container'), function(index){
    //     window.imageIndex = index + 1;
    //     handleFeatureImage();
    //   });
    // };

    // initFeatureImages();

    var featureImage1 = new Edicy.ImgDropArea($('.js-feature-image-1'), {
      positionable: true,

      change: function(data) {
        pageData.set({
          'feature_image_1': data
        });
      }
    });

    var featureImage2 = new Edicy.ImgDropArea($('.js-feature-image-2'), {
      positionable: true,

      change: function(data) {
        pageData.set({
          'feature_image_2': data
        });
      }
    });
  </script>
{% endeditorjsblock %}
