// OWL
$(document).ready(function() {
  var owl = $("#owl-header");
 
  owl.owlCarousel({
    singleItem: true,
    autoPlay: 4000,
    pagination: false
  });
 
  var owl = $("#owl-testimonials");
   
    owl.owlCarousel({
      singleItem: true,
      navigation : false,
      navigationText: false,
      autoHeight : true
    });

  var owl = $("#owl-logos");
 
  owl.owlCarousel({
    items : 5,
    itemsDesktop : [1400,4]
  });
  
});
// END OWL

// WOW
new WOW().init();
// END WOW

//MAPS
function initialize() {
  var myPosition = new google.maps.LatLng(39.638709, 22.415821);

  var mapOptions = {
    center: myPosition,
    zoom: 14,
    scrollwheel: false,
    mapTypeControl: true,
  
    styles: [{"featureType":"water","stylers":[{"color":"#0e171d"}]},{"featureType":"landscape","stylers":[{"color":"#1e303d"}]},{"featureType":"road","stylers":[{"color":"#1e303d"}]},{"featureType":"poi.park","stylers":[{"color":"#1e303d"}]},{"featureType":"transit","stylers":[{"color":"#182731"},{"visibility":"simplified"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"color":"#f0c514"},{"visibility":"off"}]},{"featureType":"poi","elementType":"labels.text.stroke","stylers":[{"color":"#1e303d"},{"visibility":"off"}]},{"featureType":"transit","elementType":"labels.text.fill","stylers":[{"color":"#e77e24"},{"visibility":"off"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#94a5a6"}]},{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"simplified"},{"color":"#e84c3c"}]},{"featureType":"poi","stylers":[{"color":"#e84c3c"},{"visibility":"off"}]}]

  };
  var map = new google.maps.Map(document.getElementById('map'),
      mapOptions);

  var marker = new google.maps.Marker({
      position: myPosition,
      map: map
      // title: 'Hello World!'
  });

}
google.maps.event.addDomListener(window, 'load', initialize);

//END MAPS

// SLIDES
// $(function() {
//   $('#slides').superslides({
//     hashchange: false
//   });
// });
// END SLIDES

// VIDEO BG
// $(function(){
//   $(".player").YTPlayer();
// });
// END VIDEO BG

// MENU BACKGROUND COLOR ON SCROLL
var mainbottom = $('#change-bg').offset().top;

// on scroll, 
$(window).on('scroll',function(){

    // we round here to reduce a little workload
    stop = Math.round($(window).scrollTop());
    if (stop > mainbottom) {
        $('.navbar-default').addClass('change-bg');
    } else {
        $('.navbar-default').removeClass('change-bg');
    }

});
// END MENU BACKGROUND COLOR ON SCROLL