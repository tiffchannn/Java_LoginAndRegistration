<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta charset="UTF-8">
	<title>Welcome</title>
</head>
<body>
	<div class="container">
		<h1>Welcome, <c:out value="${user.email}" />!</h1>
		<a class="logout-link" href="/logout">Logout</a>
	</div>
	
	
</body>
</html>