<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<html>
<head>
 <title>Products</title> 
 
 <%@ include file="template/Header.jsp" %>

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
<br>
<br>
<br>
<div class="container" id="div1">
<div ng-app="productApp" ng-controller="productController"> 

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
        <td><a href="<c:url value='/ProductDetails/{{product.productId}}'/>" ><i class="fa fa-info-circle" aria-hidden="true"></i></a></td>
      </tr>
	  
	
	  
    </tbody>
  </table>
  </div>
 </div>
<br>
</div>

<%@ include file="template/Footer.jsp" %>