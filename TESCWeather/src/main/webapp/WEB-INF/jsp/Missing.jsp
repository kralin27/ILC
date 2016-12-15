<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Missing Weather Readings</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
	<div align="center">
		<!-- display model.heading value -->
		<h1>Missing Weather Readings</h1>
		<a href=" <spring:url value="/" /> "> Home </a>
		<p>
		<table border="1">	
			<th>Date</th>
			<th># of Records Missing</th>	
			<!-- does model.dataType='measure'?  if so add another table column -->
			<c:if test="${dataType eq 'measure'}">
				<th>&nbsp</th>				
			</c:if>
			<!-- weatherReadings is a list of WeatherReading objects -->
			<c:forEach items="${weatherReadingsMissing}" var="weatherReadingsMissing">		
				<tr>
					<td><a href=" <spring:url value="/WeatherReadings/Missing/Date?date=${weatherReadingsMissing.timestamp}" /> ">${weatherReadingsMissing.timestamp}</a></td>
					<td>${weatherReadingsMissing.count}</td>
					<!-- does model.dataType='measure'?  if so add a link to display all readings for on the same date -->
				</tr>	
			</c:forEach>	
		</table>
	</div>
</body>
</html>

