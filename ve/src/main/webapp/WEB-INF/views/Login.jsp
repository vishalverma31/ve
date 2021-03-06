<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Login_Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <style>
  body {
    background-image: url("resources/cool-background.jpg");
  }
  #div { 
    background-color:#fafaf2;
	width:300px;
	height:300px;
  }
  #footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 45px;
  background-color:black;
  }
  </style>
</head>
<body>
<!-- Top Navigation Bar -->
<nav class="navbar navbar-default">
<div class="container-fuild">
  <div class="navbar-header">
    <a class="navbar-brand" href="#"><img src="resources/logo.png" alt="VE" height="30" class="img-rounded"></img></a>
  </div>
  <ul class="nav navbar-nav">
    <li><a href="home"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-product-hunt fa-fw" aria-hidden="true"></i>&nbsp; Products <span class="caret"> </span></a>
      <ul class="dropdown-menu">
       <li class="dropdown-header">Portable Devices:</li>
        <li><a href="#">Laptops</a></li>
        <li><a href="#">Mobiles</a></li>
        <li><a href="#">Mobiles Accessories</a></li>
        <li><a href="#">Wearables</a></li>
        <li class="divider"></li>
        <li class="dropdown-header">TV</li>
        <li><a href="#">Full HD</a></li> 
        <li><a href="#">Ultra HD</a></li>   
       </ul>
    </li>
    <li><a href="#"><i class="fa fa-users fa-fw" aria-hidden="true"></i>&nbsp; About us</a></li>
    <li><a href="#"><i class="fa fa-mobile fa-fw" aria-hidden="true"></i>&nbsp; Contact us</a></li>  
  </ul>
  <ul class="nav navbar-nav navbar-right">
      <li><a href="register"><span class="glyphicon glyphicon-log-in"></span> Sign Up </a></li>
  </ul>
</div>
</nav>

<!-- Middle Content -->
 <div class="container-fluid" align="center" id="div">
  <h2 align="center" style"color:white">V Electronics</h2>
  <p align="center-left" style"color:white">Login to your user profile:</p>
  <form action="login" method="POST" style="width: 200px">
    <div class="form-group">
      <label for="username">User Name:</label>
      <input type="text" class="form-control" id="username" name="username">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" name="password">
    </div>
	  <input type="submit" value="Login" class="btn btn-primary btn-sm btn-block">
      
 </form>
</div>

<!-- Footer -->
<footer class="footer" id="footer">
   <div class="container">
     <div class="row">
        <div class="col-sm-6">
           <span class="copyright text-inverse"><h4>Copyright � V Electronics Inc. 2016</h4></span>
        </div>
        <div class="col-sm-6">
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="https://www.instagram.com/vishalverma31/"><i class="fa fa-2x fa-fw fa-instagram text-inverse"></i></a>
                <a href="https://twitter.com/Vishal_MOSES/"><i class="fa fa-2x fa-fw fa-twitter text-inverse"></i></a>
                <a href="https://www.facebook.com/vishal.verma.94009841"><i class="fa fa-2x fa-fw fa-facebook text-inverse"></i></a>
              </div>
            </div>
        </div>
      </div>		
    </div>
</footer>
</body>
</html>