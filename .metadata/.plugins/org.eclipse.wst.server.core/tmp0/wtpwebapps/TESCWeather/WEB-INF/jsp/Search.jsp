<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <title>Search</title>
</head>
<body>

<h2>Weather Readings Search</h2>

		<a href=" <spring:url value="/" /> "> Home </a>

<form method="GET" action=" <spring:url value="/WeatherReadings/Date" />">
	<input type="text" name="date" size="10">
	<!-- HTTP GET method will append ?date=<value entered> to request URL -->
	<input type="submit" value="For Date">
</form>

<form method="GET" action=" <spring:url value="/WeatherReadings/Measure/Rain" />">
	<input type="submit" value="Rain">
</form>

<form method="GET" action=" <spring:url value="/WeatherReadings/Measure/Wind" />">
	<input type="submit" value="Wind">
</form>

<form method="GET" action=" <spring:url value="/WeatherReadings/Measure/TempMin" />">
	<input type="submit" value="Temp Min">
</form>

<form method="GET" action=" <spring:url value="/WeatherReadings/Measure/TempMax" />">
	<input type="submit" value="Temp Max">
</form>

</body>
</html>