<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Hello World - Input Form</title>
</head>
<body>
	<h2>Student Registration Confirmation</h2>
	Registration Confirmed: ${student.firstName} ${student.lastName} 
	Country: ${student.country} 
	Favorite Langauge: ${student.favoriteLanguage}
	Operating Systems:
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li> ${temp} </li>
		</c:forEach>
	</ul>
</body>
</html>