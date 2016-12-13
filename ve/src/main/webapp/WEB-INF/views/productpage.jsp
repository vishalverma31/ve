<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Products</title> 
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	
	body {
    background-image: url("resources/cool-background.jpg");
    }
    
    #footer {
     position: absolute;
     bottom: 0;
     width: 100%;
     /* Set the fixed height of the footer here */
     height: 45px;
     background-color:black;
     }
     #div1{position:relative;}
  </style>
</head>
<body>

<!-- Top Navigation Bar -->
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fuild">
  <div class="navbar-header">
    <a class="navbar-brand" href="#"><img src="resources/logo.png" alt="VE" height="30" class="img-rounded"></img></a>
  </div>
  <ul class="nav navbar-nav">
    <li><a href="home"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-product-hunt fa-fw" aria-hidden="true"></i>&nbsp; Products <span class="caret"> </span></a>
      <ul class="dropdown-menu">
       <li class="dropdown-header">Portable Devices:</li>
        <li><a href="productpage">Laptops</a></li>
        <li><a href="#">Portable Speakers</a></li>
        <li><a href="#">Ipod</a></li>
        <li><a href="#">Wearables</a></li>
        <li class="divider"></li>
        <li class="dropdown-header">TV</li>
        <li><a href="#">Full HD</a></li> 
        <li><a href="#">Ultra HD</a></li>   
       </ul>
    </li>
    <li><a href="AboutUs"><i class="fa fa-users fa-fw" aria-hidden="true"></i>&nbsp; About us</a></li>
    <li><a href="ContactUs"><i class="fa fa-mobile fa-fw" aria-hidden="true"></i>&nbsp; Contact us</a></li>  
  </ul>
  <ul class="nav navbar-nav navbar-right">
      <li><a href="login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
      <li><a href="register"><span class="glyphicon glyphicon-log-in"></span> Sign Up </a></li>
  </ul>
</div>
</nav>

<script>

var prod=${productList};
angular.module("productApp",[])

.controller("productController",function($scope){
	
	$scope.prodData=prod;
	
	$scope.sort=function(keyname){
		$scope.sortKey=keyname;
		$scope.reverse=!$scope.reverse;
	}
	
});

</script>

<div class="container" id="div1">
<div ng-app="productApp" ng-controller="productController"> 
<br>
<br>
<br>
<input type="text" ng-model="search" align="right" placeholder="Search"/>
<br/>
  <table class="tg">
    <thead>
      <tr>
        <th ng-click="sort('productId')">Product ID</th>
        <th ng-click="sort('brand')">Product Brand</th>
        <th ng-click="sort('productName')">Product Name</th>
        <th ng-click="sort('price')">Price</th>
        <th ng-click="sort('category')">Category</th>
        <th ng-click="sort('description')">Product Description</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="product in prodData | filter:search | orderBy: sortKey : reverse">
        <td>{{product.productId}}</td>
        <td>{{product.brand}}</td>
        <td>{{product.productName}}</td>
        <td>{{product.price}}</td>
        <td>{{product.category}}</td>
        <td>{{product.description}}</td>
        <td><a href="ProductDetails" ><i class="fa fa-info-circle" aria-hidden="true"></i></a></td>
      </tr>
	  
	
	  
    </tbody>
  </table>
  </div>
 </div>
</div>

<%@ include file="template/Footer.jsp" %>