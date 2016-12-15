<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather Readings Missing</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
	<div align="center">
		<!-- display model.heading value -->
		<h1>Missing Weather Readings - ${heading}</h1>
		<a href="<%=request.getHeader("referer")%>"> Return to List</a>
		<p>
		<a href=" <spring:url value="/" /> "> Home </a>
		<p>
		<table border="1">
			<th>Missing Reading</th>
			<!-- weatherReadings is a list of WeatherReading objects -->
			<c:forEach items="${weatherReadingMissingDetail}" var="Timestamp">		
				<tr>
					<td>${Timestamp.timestamp}</td>
				</tr>	
			</c:forEach>	
		</table>
	</div>
</body>
</html>

