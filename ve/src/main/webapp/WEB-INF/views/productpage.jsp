<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
</head>
<body>

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
<div ng-app="productApp" ng-controller="productController"> 

<input type="text" ng-model="search" />
<br/>
  <table>
    <thead>
      <tr>
        <th ng-click="sort('productId')">Product ID</th>
        <th ng-click="sort('productName')">Product Name</th>
        <th ng-click="sort('price')">Price</th>
        <th ng-click="sort('category')">Category</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      
	  <tr ng-repeat="product in prodData | filter:search | orderBy: sortKey : reverse">
        <td>{{product.productId}}</td>
        <td>{{product.productName}}</td>
        <td>{{product.price}}</td>
        <td>{{product.category}}</td>
  
      </tr>
	  
	
	  
    </tbody>
  </table>
  </div>
</div>

</body>
</html>