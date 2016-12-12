<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather Readings</title>
</head>
<body>
	<div align="left">
		<!-- display model.heading value -->
		<h1>Weather Readings - ${heading}</h1>
		<a href=" <spring:url value="/" /> "> Home </a>
		<table border="1">
			<th>Id</th>
			<th>Timestamp</th>
			<th>Min Temp</th>			
			<th>Max Temp</th>
			<th>Rain</th>	
			<th>Max Wind</th>				
			<th>&nbsp</th>		
			<!-- does model.dataType='measure'?  if so add another table column -->
			<c:if test="${dataType eq 'measure'}">
				<th>&nbsp</th>				
			</c:if>
			<!-- weatherReadings is a list of WeatherReading objects -->
			<c:forEach items="${weatherReadings}" var="weatherReading">		
				<tr>
					<td>${weatherReading.id}</td>
					<td>${weatherReading.timestamp}</td>
					<td>${weatherReading.air_temp_c_min}</td>
					<td>${weatherReading.air_temp_c_max}</td>
					<td>${weatherReading.rain_mm_total}</td>
					<td>${weatherReading.wind_speed_ms_max}</td>
					<td><a href=" <spring:url value="/WeatherReading?id=${weatherReading.id}" /> "> Details </a></td>
					<!-- does model.dataType='measure'?  if so add a link to display all readings for on the same date -->
					<c:if test="${dataType eq 'measure'}">
						<%-- create a jsp variable : readingDate=the date part of weatherReading.timestamp --%>
						<c:set var="readingDate" value="${fn:substring(weatherReading.timestamp, 0, 10)}" />
						<td><a href=" <spring:url value="/WeatherReadings/Date?date=${readingDate}" />"> Date </a></td>		
					</c:if>
				</tr>	
			</c:forEach>	
		</table>
	</div>
</body>
</html>

