gm_init = ->
  gm_center = new google.maps.LatLng(-12.384550,-76.774246)
  gm_map_type = google.maps.MapTypeId.ROADMAP
  map_options = {center: gm_center, zoom: 17, mapTypeId: gm_map_type, scrollwheel: false}
  new google.maps.Map(@map_canvas,map_options);

$ ->
  map = gm_init()
  marker = new google.maps.Marker
    map: map
    animation: google.maps.Animation.DROP
    position: new google.maps.LatLng(-12.384550, -76.774246)
    icon: '/assets/gmaps-marker.png'
