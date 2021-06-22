<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css"/>
</head>
<body>
	<div class="container p-5">
		<h1 class="mb-3">New Ninja</h1>
		<form:form method="post" action="/ninjas/new" modelAttribute="ninja" style="width:35%"> 
				<p class="d-flex align-items-center">
					<form:label path="dojo" class="form-label" style="width:50%">Dojo:</form:label>
					<form:errors path="dojo"/>
					<form:select path="dojo" class="form-select">
						<c:forEach items="${dojos}" var="dojo">
							<form:option value="${dojo.id}">${dojo.name}</form:option>
						</c:forEach>
					</form:select>
				</p>
				<p class="d-flex align-items-center">
					<form:label path="firstName" class="form-label" style="width:50%">First Name:</form:label>
					<form:errors path="firstName"/>
					<form:input path="firstName" class="form-control"/>
				</p>
				<p class="d-flex align-items-center">
					<form:label path="lastName" class="form-label" style="width:50%">Last Name:</form:label>
					<form:errors path="lastName"/>
					<form:input path="lastName" class="form-control"/>
				</p>
				<p class="d-flex align-items-center">
					<form:label path="age" class="form-label" style="width:50%">Age:</form:label>
					<form:errors path="age"/>
					<form:input path="age" class="form-control"/>
				</p>
				<div class="d-flex justify-content-end">
					<input type="submit" value="Create" class="btn btn-outline-success"/>			
				</div>
		</form:form>
	</div>
</body>
</html>