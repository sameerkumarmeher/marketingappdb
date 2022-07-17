<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
</head>
<body style="background-color:silver" align="center">
	<h2>Lead | Search</h2>
	<hr>
	<table align="center" >
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<c:forEach items="${leads}" var="lead">
			<tr>
				<td>${lead.firstName}</td>
				<td>${lead.lastName}</td>
				<td>${lead.email}</td>
				<td>${lead.mobile}</td>	
				<td><a href="delete?id=${lead.id}">delete</a></td>
				<td><a href="update?id=${lead.id}">update</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>