

$( window ).load(function() {
    $(".ip-header").addClass('loading');
});


$(window).load(function() {

    setTimeout(function() {
        $(".ip-header").removeClass('loading').addClass('loaded').fadeOut('slow');
    }, 2000 );

});