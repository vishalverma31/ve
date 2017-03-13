/**
 * 
 */
var cartApp=angular.module("addToCartApp",[]);

cartApp.controller("addToCartCtrl",function($scope, $http){
	
	
	$scope.retrieveCart= function(cartId) {
		  $scope.cartId=cartId;
		  $scope.refreshCartItems(cartId);
		};
	
        
	$scope.removeItemFromCart=function(itemId){
			alert('Remove item Called')
			$http.put('http://localhost:9086/ve/removeItem/'+itemId).success(function (data) {
			     $scope.refreshCartItems();
	   });
	};
	
	$scope.increaseQuantity=function(itemId){
		$http.get('http://localhost:9086/ve/increaseQuantity/'+itemId).success(function (data) {
			$scope.refreshCartItems();
		});
	};
	
	$scope.decreaseQuantity=function(itemId){
		$http.get('http://localhost:9086/ve/decreaseQuantity/'+itemId).success(function (data) {
			$scope.refreshCartItems();
		});
	};
	
	$scope.GrandTotalOfItems= function() {
    	var grandTotal=0;
    	for(var i=0;i<$scope.cart.items.length;i++)
    	{  grandTotal+=$scope.cart.items[i].itemTotal;
    	}
      return grandTotal;
    };
    
    $scope.refreshCartItems= function() {
		$http.get('http://localhost:9086/ve/refreshCart/'+$scope.cartId).success(function (data){  
		  $scope.cart=data;
		  $scope.GrandTotalOfItems();
		 });
		}; 

    
    
    
    	
});	
