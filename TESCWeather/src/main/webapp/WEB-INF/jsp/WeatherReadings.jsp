<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather Readings</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
	<div align="left">
		<!-- display model.heading value -->
		<h1>Weather Readings - ${heading}</h1>
		<a href=" <spring:url value="/" /> "> Home </a>
		<table border="1">
			<th>Id</th>
			<th>Timestamp</th>
			<th>Record #</th>
			<th>Air Temp Avg</th>			
			<th>Air Temp Max</th>
			<th>Air Temp Min</th>	
			<th>Rel Humidity Avg</th>
			<th>Rel Humidity Max</th>
			<th>Rel Humidity Min</th>
			<th>Wind Speed Max</th>
			<th>Wind Speed Avg</th>			
			<th>Wind Dir Avg</th>
			<th>Solar Rad W Avg</th>
			<th>Solar Rad W Max</th>
			<th>Rain Mm Total</th>
			<th>Dew Point Min</th>
			<th>Dew Point Max</th>
			<th>Wind Chill Max</th>
			<th>Wind Chill Min</th>
			<th>Heat Index Max</th>
			<th>Heat Index Min</th>
			<th>Etrs Mm Total</th>
			<th>RSO</th>
			<th>Created At</th>
			<th>Updated At</th>
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
					<td>${weatherReading.record_num}</td>
					<td>${weatherReading.air_temp_c_avg}</td>
					<td>${weatherReading.air_temp_c_max}</td>
					<td>${weatherReading.air_temp_c_min}</td>
					<td>${weatherReading.rel_hum_avg}</td>
					<td>${weatherReading.rel_hum_max}</td>
					<td>${weatherReading.rel_hum_min}</td>
					<td>${weatherReading.wind_speed_ms_max}</td>
					<td>${weatherReading.wind_speed_avg}</td>
					<td>${weatherReading.wind_dir_avg}</td>
					<td>${weatherReading.solar_rad_w_avg}</td>
					<td>${weatherReading.solar_rad_w_max}</td>
					<td>${weatherReading.rain_mm_total}</td>
					<td>${weatherReading.dew_point_c_min}</td>
					<td>${weatherReading.dew_point_c_max}</td>
					<td>${weatherReading.wind_chill_c_max}</td>
					<td>${weatherReading.wind_chill_c_min}</td>
					<td>${weatherReading.heat_index_c_max}</td>
					<td>${weatherReading.heat_index_c_min}</td>
					<td>${weatherReading.etrs_mm_total}</td>
					<td>${weatherReading.rso}</td>
					<td>${weatherReading.created_at}</td>
					<td>${weatherReading.updated_at}</td>

				
					
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

