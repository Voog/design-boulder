;(function($) {
  var editmode = $('html').hasClass('editmode');

  // Function to limit the rate at which a function can fire.
  var debounce = function(func, wait, immediate) {
    var timeout;
    return function() {
      var context = this, args = arguments;
      var later = function() {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };
      var callNow = immediate && !timeout;
      clearTimeout(timeout);
      timeout = setTimeout(later, wait);
      if (callNow) func.apply(context, args);
    };
  };

  var bindSideClicks = function() {
    $('.js-container').on('mousedown', function(event) {
      if (!$(event.target).closest('.js-prevent-sideclick').length) {
        $('.js-popover').removeClass('expanded');

        $('body').removeClass('search-open');
        $('.js-search-open-btn').removeClass('open');
        $('.js-search-close-btn').removeClass('open');
        $('.js-search').removeClass('active');
      };
    });
  };

  // Handles mouse clicks on different buttons and sections of the web page.
  var handleElementsClick = function() {
    // Toggles the popover main menu (visible on smalles screens).
    $('.js-menu-btn').click(function() {
      $(this).toggleClass('open');
      $('.js-menu-main').toggleClass('expanded');

      if ($('.js-search-close-btn').hasClass('open')) {
        $('.js-search-close-btn').trigger('click');
      }
    });

    // Toggles the popover language menu.
    $('.js-menu-lang-btn').click(function() {
      $('.js-menu-lang-popover').toggleClass('expanded');
    });

    // Opens the search modal.
    $('.js-search-open-btn').click(function() {
      if ($('.js-menu-main').hasClass('expanded')) {
        $('.js-menu-main').removeClass('expanded');
        $('.js-menu-btn').removeClass('open');
      }

      $(this).addClass('open');
      $('body').addClass('search-open');
      $('.js-search-close-btn').addClass('open');
      $('.js-search').addClass('active');
      $('.js-search-inner').css({'margin-top': '-25px'});
      $('.js-search-input').val('').focus();
    });

    // Closes the search modal.
    $('.js-search-close-btn').click(function() {
      $(this).removeClass('open');
      $('body').removeClass('search-open');
      $('.js-search-open-btn').removeClass('open');
      $('.js-search').removeClass('active');
    });

    // Prevents search modal closing on click
    $('.js-search').click(function() {
    });
  };

  // Switches the search input and menu button location in DOM for mobile view.
  var handleSearchPositionChange = function() {
    var windowWidth = $(window).width(),
        search = $('.js-search'),
        menuBtn = $('.js-menu-btn');

    if (windowWidth <= 640) {
      if (search.next().is(menuBtn)) {
        search.before(menuBtn);
      }
    } else {
      if (search.prev().is(menuBtn)) {
        search.after(menuBtn);
      }
    };
  };

  // Closes the soft keyboards on mobile devices on search submit.
  var handleSearchSubmit = function() {
    $('.js-search-submit').on('click', function() {
      $('.js-search-input').parent().blur();
    });
  };

  var toggleFlags = function() {
    $('.js-option-toggle-flags').on('click', function() {
      if ($(this).hasClass('js-flag-disable-btn')) {
        var flagsState = false;
      } else {
        var flagsState = true;
      }

      siteData.set("flags_state", flagsState);
      $(this).toggleClass('js-flag-disable-btn');
      $('.js-menu-lang').toggleClass('flags-enabled flags-disabled');
    });
  };

  // Returns the suitable version of the image depending on the viewport width.
  var getImageByWidth = function(sizes, targetWidth) {
    var prevImage;

    for (var i = 0, max = sizes.length; i < max; i++) {
      if (sizes[i].width < targetWidth) {
        return prevImage || sizes[i];
      }
      prevImage = sizes[i];
    }
    // Makes sure that smallest is returned if all images bigger than targetWidth.
    return sizes[sizes.length - 1];
  };

  var headerBgImageSizesContains = function(sizes, url) {
    for (var i = sizes.length; i--;) {
      if (url.indexOf(sizes[i].url.trim()) > -1) {
        return true;
      }
    }
    return false;
  };

  // Checks the lightness sum of header background image and color and sets the lightness class depending on it's value.
  var handleHeaderImageLightnessClass = function() {
    if (headerBgCombinedLightness >= 0.5) {
      $('.js-background-type').addClass('light-background').removeClass('dark-background');
    } else {
      $('.js-background-type').addClass('dark-background').removeClass('light-background');
    }
  };

  // Header background image and color preview logic function.
  var headerBgPreview = function(data, header) {
    // Defines the variables used in preview logic.

    var headerBgImagePrevious = $('.js-bgpicker-header-image').css('background-image'),
        headerBgImageSuitable = data.imageSizes ? getImageByWidth(data.imageSizes, $(window).width()) : null,
        headerBgImage = (data.image && data.image !== '') ? 'url(' + headerBgImageSuitable.url + ')' : 'none',
        headerBgImageSizes = (data.imageSizes && data.imageSizes !== '') ? data.imageSizes : null,
        headerBgColor = (data.color && data.color !== '') ? data.color : 'rgba(0,0,0,0)',
        headerBgColorDataLightness = (data.colorData && data.colorData !== '') ? data.colorData.lightness : 1,
        colorExtractImage = $('<img>'),
        colorExtractCanvas = $('<canvas>'),
        colorExtractImageUrl = (data.image && data.image !== '') ? data.image : null;

    if (colorExtractImageUrl) {
      if (headerBgImageSizesContains(headerBgImageSizes, headerBgImagePrevious)) {
        headerBg.headerBgImageColor = headerBg.headerBgImageColor ? headerBg.headerBgImageColor : 'rgba(103,103,110,1)';
        headerBgCombinedLightness = getCombinedLightness(headerBg.headerBgImageColor, headerBgColor);
        handleHeaderImageLightnessClass();
      } else {
        colorExtractImage.attr('src', colorExtractImageUrl.replace(/.*\/(photos|voogstock)/g,'/photos'));
        colorExtractImage.load(function() {
          ColorExtract.extract(colorExtractImage[0], colorExtractCanvas[0], function(data) {
            headerBg.headerBgImageColor = data.bgColor ? data.bgColor : 'rgba(255,255,255,1)';
            headerBgCombinedLightness = getCombinedLightness(headerBg.headerBgImageColor, headerBgColor);
            handleHeaderImageLightnessClass();
          });
        });
      };
    } else {
      headerBg.headerBgImageColor = 'rgba(255,255,255,1)';
      headerBgCombinedLightness = getCombinedLightness('rgba(255,255,255,1)', headerBgColor);
      handleHeaderImageLightnessClass();
    };

    // Updates the header background image and background color.
    $(header).find('.js-bgpicker-header-image').css({'background-image' : headerBgImage});
    $(header).find('.js-bgpicker-header-color').css({'background-color' : headerBgColor});
  };

  // Header background image and color save logic function.
  var headerBgCommit = function(data, dataName) {
    var commitData = $.extend(true, {}, data);
    commitData.image = data.image || '';
    commitData.imageSizes = data.imageSizes || '';
    commitData.color = data.color || 'rgba(255,255,255,0)';
    commitData.combinedLightness = headerBgCombinedLightness;
    pageData.set(dataName, commitData);
  };

  var colorSum = function(bgColor, fgColor) {
    if (bgColor && fgColor) {
      if (typeof bgColor == 'string') {
        bgColor = bgColor.replace(/rgba?\(/,'').replace(/\)/,'').split(',');
        $.each(bgColor, function(n, x) {bgColor[n] = +x;});
      }
      if (typeof fgColor == 'string') {
        fgColor = fgColor.replace(/rgba?\(/,'').replace(/\)/,'').split(',');
        $.each(fgColor, function(n, x) {fgColor[n] = +x;});
      }
      if (typeof bgColor == 'object' && bgColor.hasOwnProperty('length')) {
        if (bgColor.length == 3) { bgColor.push(1.0); }
      }
      if (typeof fgColor == 'object' && fgColor.hasOwnProperty('length')) {
        if (fgColor.length == 3) { fgColor.push(1.0); }
      }
      var result = [0, 0, 0, 0];
      result[3] = 1 - (1 - fgColor[3]) * (1 - bgColor[3]);
      if (result[3] === 0) { result[3] = 1e-6; }
      result[0] = Math.min(fgColor[0] * fgColor[3] / result[3] + bgColor[0] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
      result[1] = Math.min(fgColor[1] * fgColor[3] / result[3] + bgColor[1] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
      result[2] = Math.min(fgColor[2] * fgColor[3] / result[3] + bgColor[2] * bgColor[3] * (1 - fgColor[3]) / result[3], 255);
      return $.map(result, function(e) { return Math.floor(e); });
    }
  };

  var getCombinedColor = function(bgColor, fgColor) {
    var sum = colorSum(bgColor || [255,255,255,1], fgColor || [255,255,255,1]);
    return sum;
  };

  var getCombinedLightness = function(bgColor, fgColor) {
    var combinedColor = getCombinedColor(bgColor, fgColor);
    var color = Math.round(((+combinedColor[0]) * 0.2126 + (+combinedColor[1]) * 0.7152 + (+combinedColor[2]) * 0.0722) / 2.55) / 100;
    return color;
  };

  // scrolls to the comment-form if comment submit failed (to show the error messages to the user)
  var focusFormWithErrors = function() {
    $(document).ready(function() {
      if ($('.comment-form').hasClass('form_with_errors')) {
        $('html, body').scrollTop($('.comment-form').offset().top);
      } else if ($('form').find('.form_error, .form_notice').length > 0) {
        $('html, body').scrollTop($('.form_error, .form_notice').closest('form').offset().top);
      }
    });
  };

  // TODO: Remove if Edicy is going to wrap table with the container
  var wrapTables = function() {
    if (!editmode) {
      $.each($('.content-formatted:not(".js-custom-content-formatted") table'), function() {
          $(this).wrap('<div class="table-container overthrow"></div>');
      });
    }
  };
  
  var bindCustomTexteditorStyles = function(buttonTranslation) {
    window.edy = window.edy || [];
    edy.push(['texteditorStyles', {name: buttonTranslation, tagname:'a', attribute: {'href': '#'}, classname: 'custom-btn', toggle: true}]);
  };

  // Initiates the table horisontal scroll function when window is resized
  var handleWindowResize = function() {
    $(window).resize(debounce(handleSearchPositionChange, 1000));
  };

  // Initiations
  var initBlogPage = function() {
    // ADD BLOG LISTING layout specific FUNCTIONS HERE
  };

  var initArticlePage = function() {
    // ADD SINGLE POST layout specific FUNCTIONS HERE
  };

  var initCommonPage = function() {
    // ADD COMMON PAGE SPECIFIC FUNCTIONS HER
  };

  var initFrontPage = function() {
    // ADD COMMON PAGE SPECIFIC FUNCTIONS HER
  };

  var init = function() {
    // ADD SITE WIDE FUNCTIONS HERE
    bindSideClicks();
    handleElementsClick();
    handleSearchPositionChange();
    handleSearchSubmit();
    handleWindowResize();
    wrapTables();
    focusFormWithErrors();
  };

  // Enables the usage of the initiations outside this file
  window.site = $.extend(window.site || {}, {
    initBlogPage: initBlogPage,
    initArticlePage: initArticlePage,
    initCommonPage: initCommonPage,
    initFrontPage: initFrontPage,
    toggleFlags: toggleFlags,
    headerBgPreview: headerBgPreview,
    headerBgCommit: headerBgCommit,
    bindCustomTexteditorStyles: bindCustomTexteditorStyles
  });

  init();
})(jQuery);
