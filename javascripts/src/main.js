;(function($) {
  var editmode = $('html').hasClass('editmode');

  var toggleMainMenu = function() {
    $('.js-menu-btn').click(function() {
      $(this).toggleClass('open');
      $('.js-menu-main').toggleClass('expanded');
    });
  };

  var toggleLangMenu = function() {
    $('.js-menu-lang-btn').click(function(event) {
      event.stopPropagation();
      $('.js-menu-lang-popover').toggleClass('expanded');
    });
  };

  var handlePopoverMenuHide = function() {
    $('html').click(function() {
      if ($('.js-menu-lang-popover').hasClass('expanded')) {
        $('.js-menu-lang-popover').removeClass('expanded');
      }
    });
  };

  // Sets the position of the footer to the bottom of the page
  var handleFooterPositioning = function() {
    footerHeight = $('.js-footer').height();
    $('.js-content').css({'padding-bottom' : footerHeight});
  };

  var handleFooterContentEdit = function() {
    $('.js-footer').find('.text_partial').keydown(function() {
      handleFooterPositioning();
    });
  };

  // Reduces opacity of the gallery images that are not under the cursor
  var handleGalleryHover = function() {
    $('.edys-gallery-item').mouseover(function() {
      $(this).siblings('.edys-gallery-item').find('.edys-gallery-image').addClass('inactive');
    });

    $('.edys-gallery-item').mouseout(function() {
      $(this).siblings('.edys-gallery-item').find('.edys-gallery-image').removeClass('inactive');
    });
  };

  // scrolls to the comment-form if comment submit failed (to show the error messages to the user)
  var focusCommentsWithErrors = function() {
    $(document).ready(function() {
      if ($('.comment-form').hasClass('form_with_errors') === true) {
        $('html, body').scrollTop($('.comment-form').offset().top);
      }
    });
  };

  // TODO: Remove if Edicy is going to wrap table with the container
  var wrapTables = function() {
    $.each($('.content-formatted:not(".js-custom-content-formatted") table'), function() {
      if ($(this).parent('.js-table-container')) {
        $(this).wrap('<div class="table-container js-table-container overthrow"></div>');
      }
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

  // Initiates the table horisontal scroll function when window is resized
  var handleWindowResize = function() {
    $(window).resize(function() {
      handleTableHorizontalScrolling();
      handleFooterPositioning();
    });
  };

    // Initiations
    var initBlogPage = function() {
      // ADD BLOG LISTING layout specific FUNCTIONS HERE
    };

    var initArticlePage = function() {
      // ADD SINGLE POST layout specific FUNCTIONS HERE
      focusCommentsWithErrors();
    };

    var initCommonPage = function() {
      // ADD COMMON PAGE SPECIFIC FUNCTIONS HERE
      handleFormFieldClick();
      focusCommentsWithErrors();
    };

    var init = function() {
      // ADD SITE WIDE FUNCTIONS HERE
      toggleMainMenu();
      toggleLangMenu();
      handlePopoverMenuHide();
      handleFooterPositioning();
      handleFooterContentEdit();
      handleGalleryHover();
      handleWindowResize();
      wrapTables();
      if ($('.table-container').length > 0) {
        checkScrollBar();
        handleTableHorizontalScrolling();
      }
    };

    // Enables the usage of the initiations outside this file
    window.site = $.extend(window.site || {}, {
      initBlogPage: initBlogPage,
      initArticlePage: initArticlePage,
      initCommonPage: initCommonPage
    });

    init();
  })(jQuery);
