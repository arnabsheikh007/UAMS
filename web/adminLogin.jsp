<%-- 
    Document   : adminLogin
    Created on : Jan 15, 2021, 1:25:31 PM
    Author     : arnab
--%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Admin Login</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="Styles_log_reg.css" rel="stylesheet" id="bootstrap-css">
</head> 
<body> 
<div class="wrapper fadeInDown">
  <div id="formContent">
    <div class="fadeIn first">
      <img src="images/uams.jpeg" id="icon" alt="User Icon" />
    </div>
    <form action="AdminLoginCheck" method="POST">
      <input type="text" id="login" class="fadeIn second" name="user" placeholder="Username">
      <input type="password" id="password" class="fadeIn third" name="pwd" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

  </div>
</div> 
</html>
