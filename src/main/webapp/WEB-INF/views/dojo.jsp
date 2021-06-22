<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Dojo</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
</head>
<body>

</body>
	<div class="container p-5">
		<h1 class="mb-3">New Dojo</h1>
		<form:form method="POST" action="/dojos/new" modelAttribute="dojo" style="width:25%">
			<p class="d-flex align-items-center">
				<form:label path="name" class="form-label" style="width:50%">Name:</form:label>
				<form:errors path="name"/>
				<form:input path="name" class="form-control"/>
			</p>
			<div class="d-flex justify-content-end">
				<input type="submit" value="Create" class="btn btn-outline-success"/>			
			</div>
		</form:form>
	</div>
</html>