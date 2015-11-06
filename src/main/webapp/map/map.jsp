<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width">
<title>map.jsp</title>
  <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style>

</head>
<body>

<div id="map"></div>

<script >
	
	var map;
	function initMap() {
		  map = new google.maps.Map(document.getElementById('map'), {
				zoom : 8,
				center : {
					lat : 36,
					lng : 127
					
				}		
			});
	
	}
	
	
</script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap"></script>

</body>
</html>