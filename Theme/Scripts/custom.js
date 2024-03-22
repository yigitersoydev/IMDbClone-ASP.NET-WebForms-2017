/*
	Author: Igor Sunzharovskyi.
	Author URI: http://sizam-design.com/
*/



$(document).ready(function() {
	
	
	$(function() {
   /* Get the window's width, and check whether it is narrower than 480 pixels */

 

      /* Clone our navigation */
      var mainNavigation = $('nav.top_menu').clone();

      /* Replace unordered list with a "select" element to be populated with options, and create a variable to select our new empty option menu */
      $('.responsive_nav_wrap').html('<select class="responsive_nav"></select>');
      var selectMenu = $('select.responsive_nav');

      /* Navigate our nav clone for information needed to populate options */
      $(mainNavigation).children('ul').children('li').each(function() {

         /* Get top-level link and text */
         var href = $(this).children('a').attr('href');
         var text = $(this).children('a').text();

         /* Append this option to our "select" */
         $(selectMenu).append('<option value="'+href+'">'+text+'</option>');

         /* Check for "children" and navigate for more options if they exist */
         if ($(this).children('ul').length > 0) {
            $(this).children('ul').children('li').each(function() {

               /* Get child-level link and text */
               var href2 = $(this).children('a').attr('href');
               var text2 = $(this).children('a').text();

               /* Append this option to our "select" */
               $(selectMenu).append('<option value="'+href2+'">--- '+text2+'</option>');
            });
         }
      });


     /* When our select menu is changed, change the window location to match the value of the selected option. */
     $(selectMenu).change(function() {
       location = this.options[this.selectedIndex].value;
     });
  });

	

     $('.media_slider').flexslider({
        animation: "slide",
    });   	
	
	 $('.flexslider').flexslider({
    	animation: "slide"
  	});

	 $('.featured_slider').flexslider({
    	animation: "slide",
		selector: ".slides > .slide",
		slideshow: false
  	});

	 $('.post_slider').flexslider({
    	animation: "slide"
  	});
	
	$(".gallery-pics li").hover(function(){
        $(this).children('.gp-overlay').stop(true, true).fadeIn(500);
    }, function(){
        $(this).children('.gp-overlay').stop(true, true).fadeOut(500);
    });

    $(".scroll").click(function(event){		
		event.preventDefault();
		$('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
	});
	
    if ($("div,p").hasClass("input_styled")) {
        $(".input_styled input").customInput();
    }


    $("nav.top_menu > ul > li").hover(function(){
        $(this).children('ul').stop(true, true).slideDown(700);
    }, function(){
        $(this).children('ul').stop(true, true).slideUp(500);
    });

    $('.tabs-menu').delegate('li:not(.current)', 'click', function() {
        $(this).addClass('current').siblings().removeClass('current').parents('.tabs').find('.tabs-item').hide().eq($(this).index()).fadeIn(700);
    })
    $('.tabs-menu li:first-child').trigger('click');
	
	$('.tabs-item .drop_list').click(function() {
       $(this).parent().parent().next().slideToggle();
        return false
    });
	
	


    /*-----------------------------------------------------------------------------------*/
    /*	Carousel
     /*-----------------------------------------------------------------------------------*/
	var carousel = $(".gallery-pics.def-pics");
	    carousel.carouFredSel({
        scroll: {
            items: 1
        },
        responsive: true,
        auto: {
            play: false
        },
        items: {
		width: 180,	
        visible		: {
			min			: 2,
			max			: 3
		}



        },
        prev: {
            button: function() {return $(this).parent().siblings(".carousel-prev");} 
        },
        next: {
            button: function() {return $(this).parent().siblings(".carousel-next");}
        },

    });
	

	    $(".media_carousel .gallery-pics").carouFredSel({
        scroll: {
            items: 1
        },
        responsive: true,
        auto: {
            play: false
        },
        items: {
		width: 172,		
        visible		: {
			min			: 2,
			max			: 3
		}

        },
        prev: {
            button: function() {return $(this).parent().siblings(".carousel-prev");} 
        },
        next: {
            button: function() {return $(this).parent().siblings(".carousel-next");}
        },
		width: "100%",
        height: "auto",
		
		

    });
	
	// re-position the carousel default
	var $def_elems = $('.gallery-pics.def-pics .caroufredsel_wrapper'),
	$image_def = $('.gallery-pics.def-pics img:first')
	 
	$(window).bind( 'resize.example', function() {
	var height = $image_def.outerHeight( true );
	 
	$def_elems
	.height( height + 10 )
	 
	}).trigger( 'resize.example' );
	
	// re-position the carousel media
	var $elems = $('.media_carousel .caroufredsel_wrapper'),
	$image = $('.media_carousel .gallery-pics img:first')
	 
	$(window).bind( 'resize.example', function() {
	var height = $image.outerHeight( true );
	 
	$elems
	.height( height + 10 )
	 
	}).trigger( 'resize.example' );
	
	// re-position the category media
	var $elems_cat = $('.media_carousel.best_from_cat_carousel .caroufredsel_wrapper'),
	$image_cat = $('.media_carousel.best_from_cat_carousel .gallery-pics li:first')
	 
	$(window).bind( 'resize.example', function() {
	var height = $image_cat.outerHeight( true );
	 
	$elems_cat
	.height( height + 10 )
	 
	}).trigger( 'resize.example' );
	
	
	    $(".gallery-pics.shop-pics").carouFredSel({
        scroll: {
            items: 1,
        },
		responsive: true,
        auto: {
            play: false
        },
        items: {
		
		visible		: {
			min			: 1,
			max			: 3
		}
        },
        prev: {
            button: function() {return $(this).parent().siblings(".carousel-prev");} 
        },
        next: {
            button: function() {return $(this).parent().siblings(".carousel-next");}
        },
		width: "100%"
    });
	

	var carousel_blog = $(".blog_carousel .gallery-pics");
		    carousel_blog.carouFredSel({
        scroll: {
            items: 1
        },
        responsive: true,
        auto: {
            play: false
        },
        items: {
            width: 236,
		visible		: {
			min			: 1,
			max			: 4
		}
        },
        prev: {
            button: '.carousel-prev'
        },
        next: {
            button: '.carousel-next'
        },
        width: "100%",
		
				onCreate: function () {
    $(window).on('resize', function () {
      carousel_blog.parent().add(carousel_blog).height(carousel_blog.children().first().height());
	  
    }).trigger('resize');
  }
		
    });


    // NEWS SCROLLER
    $('#vertical-ticker').totemticker({
        row_height  :   '30px',
        next        :   '.scroller.up',
        previous    :   '.scroller.down',
		interval	:	5000
    });
						
});

