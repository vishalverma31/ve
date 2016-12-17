<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>Register_Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <style>
  body {
    background-image: url("resources/cool-background.jpg");
  }
  #div { 
    background-color:#fafaf2;
	width:400px;
	height:440px;
	
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
      <li><a href="login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
  </ul>
</div>
</nav>



<!-- Middle Content -->
<script>
function validate_form(thisform)
{
with (thisform)
  {
      if (pass.value != cpass.value) { 
    	   alert("Your password and confirmation password do not match.");
    	   cpassword.focus();
    	   return false; 
    	}
  }
} 
</script>


<div class="container" id="div">
  <h2 align="center">V Electronics</h2>
  <p align="center">Please enter your details carefully:</p>
  <form:form action="register" modelAttribute="person" class="form-horizontal">
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="name" for="name">Name: </form:label>
	  <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="name" id="name" placeholder="Enter your name"></form:input>
	  <form:errors path="name"></form:errors>
	  </div>
    </div>
	
	<div class="form-group">
      <form:label class="control-label col-sm-2" path="email" for="email">Email Address: </form:label>
      <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="email" id="email" placeholder="Enter Email Id"></form:input>
	  <form:errors path="email"></form:errors>
	  </div>	
    </div>
	
	<div class="form-group">
      <form:label class="control-label col-sm-2" path="number" for="number">Mobile No: </form:label>
      <div class="col-xs-10">
	  <form:input type="text" class="form-control" path="number" id="number" placeholder="Enter Mobile No." />
	  <form:errors path="number"></form:errors>
	  </div>
    </div>
	
    <div class="form-group">
      <form:label class="control-label col-sm-2" path="password" for="password">Password: </form:label>
	  <div class="col-xs-10">
	  <form:input type="password" class="form-control" path="password" name="pass" id="password"  placeholder="Enter Password" />
	  <form:errors path="password"></form:errors>
	  </div>
    </div>
	
	<div class="form-group">
      <label class="control-label col-sm-2" for="cpwd">Confirm Password: </label>
	  <div class="col-xs-10">
	  <input type="password" class="form-control" id="cpwd" name="cpass" placeholder="Confirm Password"/>
	  </div>
    </div>
	  <input type="submit" class="btn btn-primary btn-sm btn-block" value="Register" />
   
    </form:form>
</div>

<!-- Footer -->
<%@ include file="template/Footer.jsp" %>