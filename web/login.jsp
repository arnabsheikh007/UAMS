<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Login</title>
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
    <form action="LoginCheck" method="POST">
      <input type="text" id="login" class="fadeIn second" name="reg" placeholder="HSC Registration number">
      <input type="password" id="password" class="fadeIn third" name="pwd" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

  </div>
</div> 
</html>