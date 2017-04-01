$(document).ready(function () {

    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* google */
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    function initialize() {
        var map_canvas = document.getElementById('googleMap');

        var map_options = {
            center: new google.maps.LatLng(44.434596, 26.080533),
            zoom: 16,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            scrollwheel: false
        };

        var map = new google.maps.Map(map_canvas, map_options);
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(44.434596, 26.080533),
            map: map,
            title: 'Hello World!'
        });
        var styles = [
            {
                "featureType": "landscape",
                "stylers": [
                    { "visibility": "on" },
                    { "color": "#282828" }
                ]
            },{
                "featureType": "poi",
                "stylers": [
                    { "visibility": "off" }
                ]
            },{
                "featureType": "road",
                "stylers": [
                    { "color": "#383838" }
                ]
            },{
                "elementType": "geometry.stroke",
                "stylers": [
                    { "visibility": "off" }
                ]
            },{
                "featureType": "poi",
                "elementType": "labels.text.fill",
                "stylers": [
                    { "visibility": "on" },
                    { "weight": 8 },
                    { "hue": "#ff0000" },
                    { "color": "#ffffff" }
                ]
            },{
                "featureType": "landscape",
                "elementType": "labels.text.stroke",
                "stylers": [
                    { "color": "#ffffff" },
                    { "visibility": "on" }
                ]
            },{
                "featureType": "poi",
                "elementType": "labels.icon",
                "stylers": [
                    { "visibility": "on" }
                ]
            },{
                "featureType": "water",
                "elementType": "labels.text.fill",
                "stylers": [
                    { "visibility": "off" },
                    { "color": "#ffffff" }
                ]
            },{
                "featureType": "water",
                "elementType": "labels.text.stroke",
                "stylers": [
                    { "visibility": "on" },
                    { "color": "#ffffff" }
                ]
            },{
                "featureType": "water",
                "stylers": [
                    { "color": "#004044" }
                ]
            },{
            }
        ]
        map.setOptions({styles: styles});
    }
    google.maps.event.addDomListener(window, 'load', initialize);


});