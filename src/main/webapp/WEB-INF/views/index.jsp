<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Members</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
</head>
<body>
	<div class="container p-5">
		<h1 class="mb-3">${dojo.name} Location Ninjas</h1>
		<table class="table table-striped border border-dark border-2">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
			<c:forEach items="${ninjas}" var="ninja">
				<tr>
					<td>${ninja.firstName}</td>
					<td>${ninja.lastName}</td>
					<td>${ninja.age}</td>
				</tr>		
			</c:forEach>
		</table>
	</div>
</body>
</html>