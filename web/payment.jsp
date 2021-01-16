<%-- 
    Document   : payment
    Created on : Jan 15, 2021, 12:49:41 AM
    Author     : arnab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Payment Varification</title>
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
      <form action="PaymentCheck" method="POST">
        Payment Method : 
        <input type="radio" name="payment" id="BKash">BKash
        <input type="radio" name="payment" id="Rocket">Rocket
        <input type="radio" name="payment" id="Nagad">Nagad
      <input type="text" id="num" class="fadeIn second" name="num" placeholder="Phone Number">
      <input type="text" id="trx" class="fadeIn third" name="trx" placeholder="Transiction ID">
      <input type="submit" class="fadeIn fourth" value="Confirm">
    </form>

  </div>
</div> 
</html>
