<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Summary</title>
</head>
<body>
	<div align="left">
		<h1>Weather Readings Summary</h1>

		<a href=" <spring:url value="/" /> "> Home </a>

		<br><br>		
		<table border="1">

			<tr>
				<td align="right">Readings</td>
				<td>${weatherReadingsSummary.getReadingsCount()}</td>
			</tr>
			<tr>
				<td align="right">First Reading</td>
				<td>${weatherReadingsSummary.getReadingFirst()}</td>
			</tr>
			<tr>
				<td align="right">Last Reading</td>
				<td>${weatherReadingsSummary.getReadingLast()}</td>
			</tr>
		
		</table>
	</div>
</body>
</html>

