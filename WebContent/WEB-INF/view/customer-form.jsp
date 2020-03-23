<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Customer Form</title>
	<style>
		.error {
			color: red
		}
	</style>
</head>
<body>
<i>Fill out the form: </i>
	<form:form action="processForm" modelAttribute="customer">
		First Name: <form:input path="firstName" />
		<br><br>
		Last Name*: <form:input path="lastName" />
		<form:errors path="lastName" cssClass="error" />
		<br><br>
		Free Passes: <form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error" />
		<br><br>
		Post Code: <form:input path="postCode" />
		<form:errors path="postCode" cssClass="error" />
		<br><br>
		Course Code: <form:input path="courseCode" />
		<form:errors path="courseCode" cssClass="error" />

		<input type="submit" value="Submit" />
	</form:form>
</body>