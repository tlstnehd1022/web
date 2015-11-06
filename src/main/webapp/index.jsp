<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<style type="text/css">
	@keyframes xxx{
		from {
			opacity : 0.0;
		}

		
		to {
			background-color : red;
			opacity : 1.0;
			transform : rotateY(360deg);
		}
	}
	
	h1 {
		animation : xxx 3s;
	}
	
</style>
</head>
<body>
<h1 id="tomcat"> Virtual Tomcat V8.0 Test</h1>


<script type="text/javascript">
	tomcat.onclick = function(){
		alert("Tomcat Click...");
	}

</script>

<ol>
<!-- 오더드 리스트 -->
	<li><a href="map/map2.jsp">map2로 이동~</a></li>
	<li></li>
	<li></li>
	<li></li>
	<!-- 리스트 아이템 -->
</ol>

</body>
</html>