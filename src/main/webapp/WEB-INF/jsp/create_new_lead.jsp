<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: aqua" align="center">
	<h2>Create New Lead</h2>
	<hr>
	<form action="savelead" method="post">
	<pre>
		FirstName:<input type="text" name="firstName" />
		LastName:<input type="text" name="lastName" />
		Email:<input type="text" name="email" />
		Mobile:<input type="text" name="mobile" />
		<input type="submit" value="save" />
	</pre>
	</form>
	
	${saveMsg}
</body>
</html>