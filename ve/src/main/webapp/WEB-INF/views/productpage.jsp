<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<html>
<head>
 <title>Products</title> 
 
 <%@ include file="template/Header.jsp" %>

<style type="text/css">
p.showLess {
    white-space: nowrap; 
    width: 300px; 
    overflow: hidden;
    text-overflow: ellipsis;
  }

.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 100%;
    border-radius: 5px;
  }

  .card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
  }

</style>

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
<div class="row">
    <div class="col-md-6">
		<input type="text" ng-model="search" align="right" placeholder="Search"/>
	</div>
	<div class="col-md-6" align="right">
		<div class="dropdown" >
		<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sort By:
		<span class="caret"></span></button>
		<ul class="dropdown-menu dropdown-menu-right">
			<li ng-click="sort('brand')">Product Brand</li>
			<li ng-click="sort('productName')">Product Name</li>
			<li ng-click="sort('price')">Price</li>
			<li ng-click="sort('category')">Category</li>	
		</ul>
	</div>
</div>
</div>
<br>

<div ng-repeat="product in prodData | filter:search | orderBy: sortKey : reverse">
  <div class="card">
	<div class="row">
        <div class="col-md-4">
            <img src="<c:url value='/resources/{{product.productId}}.jpg' />" style="width:150px; height:200px" class="img-thumbnail" alt="Picture"  />
        </div>
		<div class="col-md-8"">
			<h3><b>{{product.productName}}</b></h3>
			<h5>{{product.brand}} <i class="fa fa-inr" aria-hidden="true"></i> {{product.price}} </h5>
			<h6>{{product.category}}</h6>
			<h6 class="showLess">{{product.description}}</h6>
			<p>Get Details <a href="<c:url value='/ProductDetails/{{product.productId}}'/>" ><i class="fa fa-info-circle" aria-hidden="true"></i></a></p>        
		</div>
	</div>
  </div>
  <br>
</div>
  
 </div>
<br>
<br>
</div>

<br>
<!-- Footer -->
<footer class="footer" id="footer1">
   <div class="container">
     <div class="row">
        <div class="col-sm-6">
           <span class="copyright text-inverse"><h4>Copyright © V Electronics Inc. 2016</h4></span>
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