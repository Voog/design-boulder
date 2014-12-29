;(function($) {
  var editmode = $('html').hasClass('editmode');

  // Handles mouse clicks on different buttons and sections of the web page.
  var handleElementsClick = function() {
    // Hides opened popups and modals if clicked on any other element.
    $('html').click(function() {
      if ($('.js-btn').hasClass('open')) {
        $('.js-btn').removeClass('open');
      }

      if ($('.js-popover').hasClass('expanded')) {
        $('.js-popover').removeClass('expanded');
      }

      if ($('.js-search-close-btn').hasClass('open') && $('.voog-search-modal').length === 0) {
        $('.js-search-close-btn').trigger('click');
      }
    });

    // Toggles the popover main menu (visible on smalles screens).
    $('.js-menu-btn').click(function(event) {
      event.stopPropagation();
      $(this).toggleClass('open');
      $('.js-menu-main').toggleClass('expanded');

      if ($('.js-search-close-btn').hasClass('open')) {
        $('.js-search-close-btn').trigger('click');
      }
    });

    // Toggles the popover language menu.
    $('.js-menu-lang-btn').click(function(event) {
      event.stopPropagation();
      $('.js-menu-lang-popover').toggleClass('expanded');
    });

    // Opens the search modal.
    $('.js-search-open-btn').click(function(event) {
      event.stopPropagation();
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
    $('.js-search-close-btn').click(function(event) {
      $(this).removeClass('open');
      $('body').removeClass('search-open');
      $('.js-search-open-btn').removeClass('open');
      $('.js-search').removeClass('active');
    });

    // Prevents search modal closing on click
    $('.js-search').click(function(event) {
      event.stopPropagation();
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
    }
  };

  // Closes the soft keyboards on mobile devices on search submit.
  var handleSearchSubmit = function() {
    $('.js-search-submit').on('click', function() {
      $('.js-search-input').parent().blur();
    });
  };

  // Reduces opacity of the gallery images that are not under the cursor.
  var handleGalleryHover = function() {
    $('.edys-gallery').mouseover(function() {
      $(this).find('.edys-gallery-item').addClass('inactive');
    });

    $('.edys-gallery').mouseout(function() {
      $(this).find('.edys-gallery-item').removeClass('inactive');
    });
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

  // Sets the position of the footer to the bottom of the page
  var handleFooterPositioning = function() {
    $(document).ready(function() {
      footerHeight = $('.js-footer').height();
      $('.js-footer-positioner').css({'height' : footerHeight});
    });
  };

  var handleFooterContentEdit = function() {
    $('.js-footer').find('.text_partial').keydown(function() {
      handleFooterPositioning();
    });
  };

  // Checks the presence of the table scrollbar.
  var checkScrollBar = function() {
    jQuery.fn.hasScrollBar = function(direction) {
      if (direction == 'vertical') {
        return this.get(0).scrollHeight > this.innerHeight();
      } else if (direction == 'horizontal') {
        return this.get(0).scrollWidth > this.innerWidth();
      }
      return false;
    }
  };

  // Adds horizontal scroll to tables that don't fit into the content area
  var handleTableHorizontalScrolling = function() {
    $.each($('.table-container'), function() {
      if ($(this).hasScrollBar('horizontal') === true) {
        $(this).addClass('horizontal-scroll');
      } else {
        $(this).removeClass('horizontal-scroll');
      }
    });
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

  // Initiates the table horisontal scroll function when window is resized
  var handleWindowResize = function() {
    $(window).resize(function() {
      handleTableHorizontalScrolling();
      handleFooterPositioning();
      handleSearchPositionChange();
    });
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
    handleElementsClick();
    handleFooterContentEdit();
    handleSearchPositionChange();
    handleSearchSubmit();
    handleGalleryHover();
    focusFormWithErrors();
    handleWindowResize();
    wrapTables();

    if ($('.table-container').length > 0) {
      checkScrollBar();
      handleTableHorizontalScrolling();
    }

    $(document).ready(function() {
      handleFooterPositioning();
    });
  };

  // Enables the usage of the initiations outside this file
  window.site = $.extend(window.site || {}, {
    initBlogPage: initBlogPage,
    initArticlePage: initArticlePage,
    initCommonPage: initCommonPage,
    initFrontPage: initFrontPage,
    getCombinedLightness: getCombinedLightness
  });

  init();
})(jQuery);
