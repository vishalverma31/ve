<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
  <title>Product_Details</title>
<%@ include file="template/Header.jsp" %>
<br>
<br>
<br>
<br>
<div class="container" id="div1">
       <div class="row"></div>  
         <div class="row">
         
         <h1>${product.productName}</h1>
         
         <li><h4>Brand</h4>${product.brand}</li>
         <li><h4>Description</h4>${product.description}</li>
         <li><h4>Price</h4>${product.price}</li>
         <li><h4>Category</h4>${product.category}</li>
         </div>
</div>
<%@ include file="template/Footer.jsp" %>