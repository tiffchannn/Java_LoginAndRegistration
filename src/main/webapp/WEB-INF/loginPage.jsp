<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
	<div class="top-bar">
		<p></p>
		<h1>Login</h1>
		<p><a class="register-link" href="/registration">Register Here!</a></p>
	</div>
    
    <p class="errors"><c:out value="${error}" /></p>
    
    <div class="login-form-div">
	    <form method="post" action="/login">
	        <p class="form-field">
	            <label for="email">Email</label>
	            <input type="text" id="email" name="email"/>
	        </p>
	        <p class="form-field">
	            <label for="password">Password</label>
	            <input type="password" id="password" name="password"/>
	        </p>
	        <input type="submit" value="Login!" class="btn"/>
	    </form>    
    </div>
</body>
</html>