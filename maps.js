
 (function () {
     var map, geocoder, marker, infowindow;
     window.onload = function () {
         var options = {
             zoom: 3,
             center: new google.maps.LatLng(37.09, -95.71),
             mapTypeId: google.maps.MapTypeId.ROADMAP
         };
         map = new google.maps.Map(document.getElementById('map_canvas'), options);
         var gon = document.getElementById('gonder');
         gon.onclick = function () {
             var address = document.getElementById("adress").value;
             getCoordinates(address);
             return false;
         }
         google.maps.event.addListener(map, 'click', function (e) {
             
             if (!marker) {
                 marker = new google.maps.Marker({
                     map: map
                 });
             }
             document.getElementById("enlem").value = e.latLng;
             marker.setPosition(e.latLng);     

         });
     }

    

     function getCoordinates(address) {
         if (!geocoder) {
             geocoder = new google.maps.Geocoder();
         }

         var geocoderRequest = {
             address: address
         }
         geocoder.geocode(geocoderRequest, function (results, status) {
             if (status == google.maps.GeocoderStatus.OK) {
                 map.setCenter(results[0].geometry.location);
                 if (!marker) {
                     marker = new google.maps.Marker({
                         map: map
                     });
                 }
                 document.getElementById("enlem").value = results[0].geometry.location;
                 marker.setPosition(results[0].geometry.location);
				 var infowindow = new google.maps.InfoWindow({
      content: 'Hello world'
    });
		 
		 google.maps.event.addListener(marker, 'click', function() {
      // Calling the open method of the infoWindow
      infowindow.open(map, marker);
    });
             }
         });
     }
 })();
