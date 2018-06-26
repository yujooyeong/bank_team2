<%@page import="team02.BankListRequest"%>
<%@page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList" %>
<%	String liststr = BankListRequest.bankListRequest((double)35.2310253, (double)129.0823212, (int)1000);%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
html, body {
	width: 100%; height: 100%;
}
</style>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCJcj-21SFDJR0ydDZVdkLMo3sYsbEz2MA"></script>
<script language="javascript">
var liststr = "<%=liststr %>";
var lat;
var lon;


function initialize() {
	locationSearch(lat, lon);
	var myLatLng = new google.maps.LatLng(lat, lon);
	var marker = new google.maps.Marker({
		position: myLatLng,
		map: map,
		title: "test",
	});
}

function locationSearch(lat, lon){
	var gps = navigator.geolocation;
	if (gps){
		gps.getCurrentPosition(locationResult,
		function(error){
		  alert("error code: " + error.code + " message: " + error.message);
		});
	} else {
		locationResult(postion, lat, lon);
	}
}
 
function locationResult(position, lat, lon) {
	if (position){
		lat = position.coords.latitude;
		lon = position.coords.longitude;
		var mapOptions = {
				center:new google.maps.LatLng(lat, lon),
				zoom:16,
				mapTypeId:google.maps.MapTypeId.ROADMAP
			};
		var map = new google.maps.Map(document.getElementById('map'),mapOptions);
		
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(129.0918634, 35.2283649),
			map: map,
			draggable: false,
			icon: "http://maps.google.com/mapfiles/ms/micons/yellow-dot.png"
		});
	}
}

var locations = [
];

function setMarkers(map, locations){
	for(var i=0; i<locations.length; i++){
		var markInfo = locations[i];
		var myLatLng = new google.maps.LatLng(markInfo[1], markInfo[2]);
		var marker = new google.maps.Marker({
			map: map,
			title: markInfo[0],
			position: myLatLng

		});
	}
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>지점 검색</title>
</head>
<body>
<div id="map" style="width:100%;height:100%;"></div>
<%= liststr %>

</body>
</html>