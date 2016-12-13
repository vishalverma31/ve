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

<c:url var="addAction" value="/register/add" ></c:url>

<!-- Middle Content -->
<div class="container" id="div">
  <h2 align="center">V Electronics</h2>
  <p align="center">Please enter your details carefully:</p>
  <form:form action="${addAction}" commandName="person">
  <table>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name:"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="email">
				<spring:message text="Email Address:"/>
			</form:label>
		</td>
		<td>
			<form:input path="email" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="number">
				<spring:message text="Mobile No.:"/>
			</form:label>
		</td>
		<td>
			<form:input path="number" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="pass">
				<spring:message text="Password:"/>
			</form:label>
		</td>
		<td>
			<form:input path="pass" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="cpass">
				<spring:message text="Confirm Password:"/>
			</form:label>
		</td>
		<td>
			<form:input path="cpass" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${empty person.name}">
				<input type="submit"
					value="<spring:message text="Register"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
</div>

<!-- Footer -->
<%@ include file="template/Footer.jsp" %>