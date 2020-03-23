<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Hello World - Input Form</title>
</head>
<body>
	<h2>Student Registration Page</h2>
	<form:form action="processForm" modelAttribute="student">
		First Name: <form:input path="firstName" />
		Last  Name: <form:input path="lastName" />
		Country   : 
			<form:select path="country">
				<form:options items="${ student.countryOptions }"/>
			</form:select>
			<br> <br>
		Favorite Language:
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		C# <form:radiobutton path="favoriteLanguage" value="C#" />
		PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
		
		Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
		
		<input type="submit"/>
	</form:form>
</body>
</html>