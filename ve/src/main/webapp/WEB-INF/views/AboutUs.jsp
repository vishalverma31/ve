<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
  <title>About Us</title>

<%@ include file="template/Header.jsp" %>
<br>
<br>
<br>
<br>
<div class="container" id="div1">
        <h1>V Electronics Inc.</h1>
         <!-- width="230" height="180" -->
         <div class="row">
           <div class="col-md-6">
                <img src="<c:url value='/resources/logo.png' />" class="img-thumbnail" alt="Picture" width="230" height="180" />
           </div>
           <div class="col-md-6">
           <h4>VE.com, is one of the most potentious e-commerce website out there, on Internet. It has diversified into various segments, with electronics and gadgets forming a chunk of us. We have a vast collection of TVs, Speakers, Laptops, Ipod, etc. and we offer most of our products with discounts. We are own of our vast collection and our filtering options, having categories to filter the large number of products. Our payment options include net banking, debit/credit card, cash cards and even Cash On Delivery.</h4>
           </div>
         </div>
        <br> 
</div>


<%@ include file="template/Footer.jsp" %>