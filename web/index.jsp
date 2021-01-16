<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>UAMS Home</title>
    <!-- bootstrap css framework -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <!-- jQuery and JS bundle w/ Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <!-- icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

</head>
<body>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-md bg-light navbar-light sticky-top">
        <a class="navbar-brand" href="index.jsp"><img src="images/rsz_uams.jpg"></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="login.jsp">Applicant login</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="adminLogin.jsp">Admin login</a>
              </li>
            </ul>
          </div>
    </nav>

    <!-- Image Slider -->
    <div id="demo" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
      </ul>
      
      <!-- The slideshow -->
      <div class="carousel-inner">

        <div class="carousel-item active">
          <img src="images/bup_final.jpeg" alt="BUP" width="1500" height="600">
          <div class="carousel-caption">
            <p style="background-color: rgba(146, 131, 131, 0.801); font-size: 30px; background-size: 10px;">University Admission Management System</p>
            <div class="container">
              <a href="regpage.jsp" class="btn btn-primary btn-lg" role="button">Apply Here</a>
              <a href="circular.pdf" class="btn btn-primary btn-lg" role="button">Requirements</a>
            </div>
          </div>
        </div>

        <div class="carousel-item">
          <img src="images/admission.jpeg" alt="Admission" width="1500" height="600">
          <div class="carousel-caption">
            <p style="background-color: rgba(146, 131, 131, 0.801); font-size: 30px; background-size: 10px;">University Admission Management System</p>
            <div class="container">
              <a href="regpage.jsp" class="btn btn-primary btn-lg" role="button">Apply Here</a>
              <a href="circular.pdf" class="btn btn-primary btn-lg" role="button">Requirements</a>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <img src="images/obd.jpeg" alt="ABU OBU" width="1500" height="600">
          <div class="carousel-caption">
            <p style="background-color: rgba(146, 131, 131, 0.801); font-size: 30px; background-size: 10px;">University Admission Management System</p>
            <div class="container">
              <a href="regpage.jsp" class="btn btn-primary btn-lg" role="button">Apply Here</a>
              <a href="circular.pdf" class="btn btn-primary btn-lg" role="button">Requirements</a>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Left and right controls -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>

</body>

</html>