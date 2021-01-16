<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Registration</title>
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
    <form action="Register" method="POST">
      <input type="text" id="name" class="fadeIn second" name="user" placeholder="Full Name">
      <input type="text" id="regno" class="fadeIn third" name="regno" placeholder="HSC Registration Number">
      <input type="text" id="roll" class="fadeIn third" name="roll" placeholder="HSC Roll">
      <input type="text" id="mail" class="fadeIn third" name="mail" placeholder="E-mail">
      <input type="text" id="gpa" class="fadeIn third" name="gpa" placeholder="HSC GPA">
      <input type="password" id="password" class="fadeIn third" name="pwd" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Register">
    </form>

  </div>
</div> 
</html>