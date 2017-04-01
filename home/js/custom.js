

$( window ).load(function() {
    $(".ip-header").addClass('loading');
});


$(window).load(function() {

    setTimeout(function() {
        $(".ip-header").removeClass('loading').addClass('loaded').fadeOut('slow');
    }, 2000 );

});









$(document).ready(function () {

    "use strict";


    $('.nav a.last-child').on('click', function(){
        $(".navbar-toggle").click() //bootstrap 3.x by Richard
    });


    (function(window){

        // check for touch
        if (Modernizr.touch) {


            //service wrapper mobile function for hover
            [].slice.call(document.querySelectorAll(".ServiceWrapper")).forEach(function(el,i){

                // check if the user moves a finger
                var fingerMove = false;
                el.addEventListener("touchmove",function(e){
                    e.stopPropagation();
                    fingerMove = true;
                    classie.remove( el, 'hover' );
                });

                // always reset fingerMove to false on touch start
                el.addEventListener("touchstart",function(e){
                    e.stopPropagation();
                    fingerMove = false;
                    classie.remove( el, 'hover' );
                });

                // add hover class if figure touchend and fingerMove is false
                el.addEventListener("touchend",function(e){
                    e.stopPropagation();
                    if (fingerMove == false) {
                        classie.add( el, 'hover' );
                    }

                });

            });


            //gallery-inner mobile function for hover
            [].slice.call(document.querySelectorAll(".gallery-inner")).forEach(function(el,i){

                // check if the user moves a finger
                var fingerMove = false;
                el.addEventListener("touchmove",function(e){
                    e.stopPropagation();
                    fingerMove = true;
                    classie.remove( el, 'hover' );
                });

                // always reset fingerMove to false on touch start
                el.addEventListener("touchstart",function(e){
                    e.stopPropagation();
                    fingerMove = false;
                    classie.remove( el, 'hover' );
                });

                // add hover class if figure touchend and fingerMove is false
                el.addEventListener("touchend",function(e){
                    e.stopPropagation();
                    if (fingerMove == false) {
                        classie.add( el, 'hover' );
                    }

                });

            });

        }

        else{

            /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
            /* Stellar  */
            /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
            $(window).stellar({
                responsive: true,
                horizontalOffset: 0,
                horizontalScrolling:false,
                positionProperty: 'transform',
                hideDistantElements: false
            });



            /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
            /* scrollreveal */
            /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
            window.scrollReveal = new scrollReveal();



            /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
            /* navbar hide */
            /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
            $().showUp('.navbar');

        }

    })(window);



    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* Intro Height  */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    function introHeight() {
        var wh = $(window).height();
        $('#intro').css({height: wh});
        $('#intro.HalfBackground').css({height: wh/3*2});
    }

    introHeight();

    $(window).bind('resize',function () {
        //Update slider height on resize
        introHeight();
    });



    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* contact form init  */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    $('#contactform').submit(function(){
        var action = $(this).attr('action');
        $("#result").slideUp(300,function() {
            $('#result').hide();
            $('#submit')
                .attr('disabled','disabled');
            $.post(action, {
                    name: $('#name').val(),
                    email: $('#email').val(),
                    phone: $('#phone').val(),
                    comments: $('#comments').val()
                },
                function(data){
                    document.getElementById('result').innerHTML = data;
                    $('#result').slideDown('slow');
                    $('#submit').removeAttr('disabled');
                    if(data.match('success') != null) $('#contactform').slideUp('slow');
                }
            );

        });

        return false;

    });




    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* fitvids */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    $('body').fitVids();


    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* Isotope */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    var $container = $('.gallery').imagesLoaded( function() {
        $container.isotope({
            // options
        });
    });


    $('#filters').on( 'click', 'a', function() {
        var filterValue = $(this).attr('data-filter');
        $container.isotope({ filter: filterValue });
    });

    $container.isotope({
        filter: '*' // IF YOU WANT TO DISPLAY AT FIRST ONLY ONE FILTER, FOR EXAMPLE DESIGNS: SUBSTIUTE '*' WITH '.designs'
    });


    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* smoothscroll */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    smoothScroll.init({
        speed: 1000,
        offset: 70
    });



    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* owl-carousels */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    $("#owl-team").owlCarousel({
        singleItem:	false,
        items: 2,
        itemsDesktop : [1199,2],
        itemsDesktopSmall : [980,2],
        itemsTablet: [768,2],
        itemsMobile : [479,1],
        autoPlay:	false,
        navigation: true,
        pagination:true,
        navigationText: [
            "<i class='fa fa-angle-left fa-4x'></i>",
            "<i class='fa fa-angle-right fa-4x'></i>"
        ]
    });



    $("#owl-testimonials").owlCarousel({
        singleItem:	true,
        autoPlay:	true,
        navigation: true,
        pagination:true,
        navigationText: [
            "<i class='fa fa-angle-left fa-4x'></i>",
            "<i class='fa fa-angle-right fa-4x'></i>"
        ]
    });



    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* timers */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    $('#charts').waypoint(function() {
        // first timer
        $('.ChartNumber1').countTo({

            from: 0, // the number you want to start
            to: 8000, // the number you want to reach
            speed: 1500,
            refreshInterval: 100

        });

        // second timer
        $('.ChartNumber2').countTo({

            from: 0,// the number you want to start
            to: 6,// the number you want to reach
            speed: 2000,
            refreshInterval: 50

        });


        // third timer
        $('.ChartNumber3').countTo({

            from: 0,// the number you want to start
            to: 4,// the number you want to reach
            speed: 2500,
            refreshInterval: 50
        });



    }, { offset: 500 });




});
