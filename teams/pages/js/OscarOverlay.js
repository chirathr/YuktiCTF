

//If you got any sort of problems using Overlay function here is what to do:
//- make sure you have UNIQUE triggers for each portfolio item!! (for example 8 portfolio items = 8 triggers-overlay's)
//- make sure you have the exact amount of portfolio items and overlay-triggers (if you want you can add more triggers just make sure they are unique)
//- if there are more triggers than portfolio items you want, simply remove the trigger's initialisation from this file
//          - for example to remove 'trigger-overlay9' trigger, simply remove line 18 and line 88

// It's quite simple to edit this, but if you encounter problems, please use the Support Tab http://themeforest.net/item/oscar-minimal-multipurpose-parallax-one-page-template/12669429

(function() {
    var triggerBttn = document.getElementById( 'trigger-overlay' ),
        triggerBttnTwo = document.getElementById( 'trigger-overlay2' ),
        triggerBttnThree = document.getElementById( 'trigger-overlay3' ),
        triggerBttnFour = document.getElementById( 'trigger-overlay4' ),
        triggerBttnFive = document.getElementById( 'trigger-overlay5' ),
        triggerBttnSix = document.getElementById( 'trigger-overlay6' ),
        triggerBttnSeven = document.getElementById( 'trigger-overlay7' ),
        triggerBttnEight = document.getElementById( 'trigger-overlay8' ),
        triggerBttnNine = document.getElementById( 'trigger-overlay9' ),

        overlay = document.querySelector( 'div.overlay' ),
        closeBttn = overlay.querySelector( 'a.overlay-close' );
    transEndEventNames = {
        'WebkitTransition': 'webkitTransitionEnd',
        'MozTransition': 'transitionend',
        'OTransition': 'oTransitionEnd',
        'msTransition': 'MSTransitionEnd',
        'transition': 'transitionend'
    },
        transEndEventName = transEndEventNames[ Modernizr.prefixed( 'transition' ) ],
        support = { transitions : Modernizr.csstransitions };

    function toggleOverlay() {
        if( classie.has( overlay, 'open' ) ) {
            classie.remove( overlay, 'open' );
            classie.add( overlay, 'close' );
            var onEndTransitionFn = function( ev ) {
                if( support.transitions ) {
                    if( ev.propertyName !== 'visibility' ) return;
                    this.removeEventListener( transEndEventName, onEndTransitionFn );
                }
                classie.remove( overlay, 'close' );
            };



            if( support.transitions ) {
                overlay.addEventListener( transEndEventName, onEndTransitionFn );
            }
            else {
                onEndTransitionFn();
            }

            $( "body" ).removeClass( "noscroll" );

        }
        else if( !classie.has( overlay, 'close' ) ) {
            classie.add( overlay, 'open' );
            $( "body" ).addClass( "noscroll" );
        }



        $("div.overlay").animate({ scrollTop: 0 }, "slow");


    }


    //esc key to close overlay
    $(document).bind('keydown',function(e){
        if ( e.which == 27 ) {
            toggleOverlay();
        };
    });



    closeBttn.addEventListener( 'click', toggleOverlay );

    triggerBttn.addEventListener( 'click', toggleOverlay );
    triggerBttnTwo.addEventListener( 'click', toggleOverlay );
    triggerBttnThree.addEventListener( 'click', toggleOverlay );
    triggerBttnFour.addEventListener( 'click', toggleOverlay );
    triggerBttnFive.addEventListener( 'click', toggleOverlay );
    triggerBttnSix.addEventListener( 'click', toggleOverlay );
    triggerBttnSeven.addEventListener( 'click', toggleOverlay );
    triggerBttnEight.addEventListener( 'click', toggleOverlay );
    triggerBttnNine.addEventListener( 'click', toggleOverlay );

    return false;
})();




/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/* overlay portfolio */
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
$("a.overlay-ajax").click(function(){
    var url = $(this).attr("href");
    $(".overlay-section").load(url + ' #transmitter');
    return false;
});
