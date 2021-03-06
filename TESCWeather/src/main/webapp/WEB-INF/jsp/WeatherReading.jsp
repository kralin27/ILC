<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather Reading</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
	<div align="left">
		<h1>Weather Reading</h1>

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
				<td align="right">Avg Temp</td>
				<td>${weatherReading.air_temp_c_avg}</td>
			</tr>
			
			<tr>
				<td align="right">Rel Hum Avg</td>
				<td>${weatherReading.rel_hum_avg}</td>
			</tr>
			
			<tr>
				<td align="right">Rel Hum Max</td>
				<td>${weatherReading.rel_hum_max}</td>
			</tr>
			
			<tr>
				<td align="right">Rel Hum Min</td>
				<td>${weatherReading.rel_hum_min}</td>
			</tr>
			
			<tr>
				<td align="right">Wind Speed Ms Max</td>
				<td>${weatherReading.wind_speed_ms_max}</td>
			</tr>
			
			<tr>
				<td align="right">Wind Speed Avg</td>
				<td>${weatherReading.wind_speed_avg}</td>
			</tr>
			
			<tr>
				<td align="right">Wind Dir Avg</td>
				<td>${weatherReading.wind_dir_avg}</td>
			</tr>
			
			<tr>
				<td align="right">Solar Rad W Avg</td>
				<td>${weatherReading.solar_rad_w_avg}</td>
			</tr>
			
			<tr>
				<td align="right">Solar Rad W Max</td>
				<td>${weatherReading.solar_rad_w_max}</td>
			</tr>
			
			<tr>
				<td align="right">Rain (mm)</td>
				<td>${weatherReading.rain_mm_total}</td>
			</tr>
			
			<tr>
				<td align="right">Dew Point C Max</td>
				<td>${weatherReading.dew_point_c_max}</td>
			</tr>	
			
			<tr>
				<td align="right">Wind Chill C Max</td>
				<td>${weatherReading.wind_chill_c_max}</td>
			</tr>
			
			<tr>
				<td align="right">Wind Chill C Min</td>
				<td>${weatherReading.wind_chill_c_min}</td>
			</tr>
			
			<tr>
				<td align="right">Heat Index C Max</td>
				<td>${weatherReading.heat_index_c_max}</td>
			</tr>
			
			<tr>
				<td align="right">Heat Index C Min</td>
				<td>${weatherReading.heat_index_c_min}</td>
			</tr>
			
			<tr>
				<td align="right">Etrs Total</td>
				<td>${weatherReading.etrs_mm_total}</td>
			</tr>
			
			<tr>
				<td align="right">Rso</td>
				<td>${weatherReading.rso}</td>
			</tr>
			<tr>
				<td align="right">Created At</td>
				<td>${weatherReading.created_at}</td>
			</tr>
			<tr>
				<td align="right">Updated At</td>
				<td>${weatherReading.updated_at}</td>
			</tr>
			
			</table>
	</div>
</body>
</html>

