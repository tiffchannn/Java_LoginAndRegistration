<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="UTF-8">
    <title>Registration Page</title>
</head>
<body>
    <h1>Register!</h1>
    <p class="errors"><form:errors path="user.*"/></p>
    
    <div class="form-div">
	    
	    <form:form class="register-form" method="POST" action="/registration" modelAttribute="user">
	        <p class="form-field">
	            <form:label path="email">Email:</form:label>
	            <form:input type="email" path="email"/>
	        </p>
	        <p class="form-field">
	            <form:label path="password">Password:</form:label>
	            <form:password path="password"/>
	        </p>
	        <p class="form-field">
	            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
	            <form:password path="passwordConfirmation"/>
	            <!-- displays the errors exactly where you want them -->
	            <form:errors path="passwordConfirmation"/>
	        </p>
	        <input type="submit" value="Register!" class="register-btn"/>
	    </form:form>
    </div>
    
</body>
</html>