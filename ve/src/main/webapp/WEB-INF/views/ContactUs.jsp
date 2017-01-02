<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
  <title>Contact Us</title>
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
                <ul>
                    <li><h4>Call us:</h4>+91-9015555938</li>
                    <li><h3>Mail Us:</h3></li>
                    <li><h4>Returns Processing Facility</h4>
                    <p>
                      Survey Numbers 231, 232 and 233
                      Soukya Road, Samethanahalli Village
                      Anugondanahalli Hobli, Hoskote Taluk
                      Bengaluru - 560067
                    <p></li>
                    <li><h4>Corporate Office</h4>
                    <p>
                        V Electronics Inc.
                        AKR Tech Park- B Block,
                        Krishna Reddy Industrial Area,
                        7th Mile, Kudlu Gate,
                        Bengaluru - 560068
                    </p></li>
                    
               </ul>
          </div>
         </div>
         <br>
</div>
<%@ include file="template/Footer.jsp" %>
