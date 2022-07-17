<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
	<h2>Lead | Update</h2>
	<form action="updatelead" method="post">
	<pre>
		FirstName:<input type="text" name="firstName" value="${lead.firstName}"/>
		LastName:<input type="text" name="lastName" value="${lead.lastName}" />
		Email:<input type="text" name="email" value="${lead.email}"/>
		Mobile:<input type="text" name="mobile" value="${lead.mobile}"/>
		<input type="submit" value="save" />
	</pre>
	</form>
</body>
</html>