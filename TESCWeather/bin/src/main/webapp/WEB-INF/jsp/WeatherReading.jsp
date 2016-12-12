<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather Reading</title>
</head>
<body>
	<div align="left">
		<h1>Weather Reading</h1>

		<a href=" <spring:url value="/" /> "> Home </a>
		&nbsp
		<!-- read property from HTTP Header Request object -->
		<a href="<%=request.getHeader("referer")%>"> Return to List</a>
		<br><br>		
		<table border="1">
			<tr>
				<td align="right">Id</td>
				<td>${weatherReading.id}</td>
			</tr>
			<tr>
				<td align="right">Timestamp</td>
				<td>${weatherReading.timestamp}</td>
			</tr>
			<tr>
				<td align="right">Max Temp</td>
				<td>${weatherReading.air_temp_c_max}</td>
			</tr>
			<tr>
				<td align="right">Min Temp</td>
				<td>${weatherReading.air_temp_c_min}</td>
			</tr>
			<tr>
				<td align="right">Rain (mm)</td>
				<td>${weatherReading.rain_mm_total}</td>
			</tr>		
			<tr>
				<td align="right">Wind (ms)</td>
				<td>${weatherReading.wind_speed_ms_max}</td>
			</tr>			</table>
	</div>
</body>
</html>

