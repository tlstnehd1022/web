<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>map2.jsp</title>
<style type="text/css">
	 html, body {
        height: 100%;
        width: 100%;
      	margin: 0;
      }
	
	#map{
		height: 100%;
		width: 100%
	}
</style>

</head>
<body>

<button id="loc1">강남역</button>
<button id="loc2">이대역</button>
<button id="loc3">광화문</button>
<button id="loc4">우리집</button>

<div id="map">Google Map</div>

</body>

<script src="https://maps.googleapis.com/maps/api/js"></script>
<!-- google map library 를 사용하려고 자바 스크립트를 로딩 -->

<script type="text/javascript">
	var latLng = {
			lat : 37.12345,
			lng : 127.1234
	};
	
	var options = {
			zoom : 5,
			center : latLng
		
	};
	
	
	
	var m = new google.maps.Map(map,options);
 
	google.maps.event.addListener(m, 'click', function(event){
		addMarker(event.latLng, m)
		
	});
	
	function addMarker(loc, map){
	var marker = new google.maps.Marker({
		map : map,
		position : loc
	});
	}
	 
	var geoCoder = new google.maps.Geocoder();
	
	
	
	
	loc1.onclick = moveMap;
	loc2.onclick = moveMap;
	loc3.onclick = moveMap;
	loc4.onclick = moveMap;
	
	function moveMap() {
		switch (this.id) {
		case "loc1":
			console.log("강남역으로..");
			geoCoder.geocode({address : '강남역'}, function(result, status){
				console.dir(result);
				console.dir(status);
				console.dir(geoCoder);
				/* 콘솔창에서 dir(object)로 나타냄. */
				
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				console.log("lat = " + lat);
				console.log("lng = " + lng);
				
				
				m.setCenter({
					lat : lat, 
					lng : lng
				});
				
				m.setZoom(18);
			});
			
			
			/*  펜투라는 메소드 setCenter 보다 좀더 smooth하게 ㄷ움직인다.
			m.panTo({
				lat : 37.498129, 
				lng : 127.027653
			});
			 */
		
			
			break;

		case "loc2":
			console.log("이대역으로..");
			searchForName('이대역');
			
			break;
			
		case "loc3":
			console.log("광화문으로..");
			searchForName('광화문');
			break;
			
		case "loc4":
			console.log("우리집으로..");
			m.setCenter({
				lat : 37.597194,
				lng : 127.149282
			});
			m.setZoom(18);
			break;
			
		default:
			break;
		}
		
	}
	
	function searchForName(str){
		geoCoder.geocode({address : str}, function(result, status){
			
			var lat = result[0].geometry.location.lat();
			var lng = result[0].geometry.location.lng();
		
			m.setCenter({
				lat : lat, 
				lng : lng
			});
			
			m.setZoom(18);
		});
		
	}
	

</script>
</html>