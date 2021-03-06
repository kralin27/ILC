<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Summary</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
	<div align="center">
		<h1>Weather Readings Summary</h1>

		<a href=" <spring:url value="/" /> "> Home </a>

<table border="1">

			<tr>
				<td align="center">Readings</td>
				<td>${weatherReadingsSummary.getReadingsCount()}</td>
			</tr>
			<tr>
				<td align="center">First Reading</td>
				<td>${weatherReadingsSummary.getReadingFirst()}</td>
			</tr>
			<tr>
				<td align="center">Last Reading</td>
				<td>${weatherReadingsSummary.getReadingLast()}</td>
			</tr>
			<tr>
				<td align="center"># of Missing Readings</td>
				<td>${weatherReadingsSummary.getMissingReadingCount()}</td>
			</tr>	
	
		</table>
		</div>


	
</body>
</html>

