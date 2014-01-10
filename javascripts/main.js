;(function($) {
    // General functions
	var toggleMainMenu = function() {
		$('.menu-btn').click(function() {
			$('.main-menu').toggleClass('expanded');
		});
	};
	
	var toggleLangMenu = function() {
		$('.lang-btn').click(function(event) {
			event.stopPropagation();
			$('.lang-menu-popover').toggleClass('visible');
			if ($('.lang-menu-popover').hasClass('visible')) {
				$('.lang-menu-popover').fadeIn('fast');
			} else {
				$('.lang-menu-popover').fadeOut('fast');
			}
		});
	};

	var handlePopoverMenuHide = function() {
		$('html').click(function() {
			if ($('.lang-menu-popover').hasClass('visible')) {
				$('.lang-menu-popover').removeClass('visible').fadeOut('fast');
			}
		});
	};
	
	var setSloganContainerHeight = function() {
	   siteHeaderHeight = $('.site-header').height();
	   $('.slogan').css('min-height',siteHeaderHeight)
	};

	// Initiations
	var initFrontPage = function() {
	    setSloganContainerHeight();
	};
	
	var initCommonPage = function() {
		console.log('Do stuff on common page');
	};

	var initBlogPage = function() {
		blogFunction();
	};

	var initArticlePage = function() {
		articleFunction();
	};

	var init = function() {
		toggleMainMenu();
		toggleLangMenu();
		handlePopoverMenuHide();
	};

	window.project = {
	    initFrontPage: initFrontPage,
		initCommonPage: initCommonPage,
		initBlogPage: initBlogPage,
		initArticlePage: initArticlePage
	};

	init();
})(jQuery);