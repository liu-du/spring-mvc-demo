<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Customer Form</title>
</head>
<body>
	<h2>Customer Registration Confirmation</h2>
	Registration Confirmed: ${customer.firstName} ${customer.lastName} 
	<br><br>
	Free Passes: ${ customer.freePasses }
	<br><br>
	Post Code: ${ customer.postCode }
	<br><br>
	Course Code: ${ customer.courseCode }

</body>
</html>