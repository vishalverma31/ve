
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
  <style>
  body {
    background-image: url("<c:url value='/resources/cool-background.jpg' />");
  }
  #footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 45px;
  background-color:black;
  }
  #footer1 {
  position: relative;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 45px;
  background-color:black;
  }
  #div1{ background-color:#fafaf2;}
  .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
  .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
  .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
  .tg .tg-4eph{background-color:#f9f9f9}
  </style>
</head>
<body>
<!-- Top Navigation Bar -->
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fuild">
  <div class="navbar-header">
    <a class="navbar-brand" href="#"><img src="<c:url value='/resources/logo.png"' /> alt="VE" height="30" class="img-rounded"></img></a>
  </div>
  <ul class="nav navbar-nav">
    <li><a href="<c:url value='/home' />"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-product-hunt fa-fw" aria-hidden="true"></i>&nbsp; Products <span class="caret"> </span></a>
      <ul class="dropdown-menu">
        <li><a href="<c:url value='/productpage/All' />">All</a></li> 
        <li class="dropdown-header">Portable Devices:</li>
        <li><a href="<c:url value='/productpage/Laptop' />">Laptops</a></li>
        <li><a href="<c:url value='/productpage/Speaker' />">Portable Speakers</a></li>
        <li><a href="<c:url value='/productpage/Ipod' />">Ipod</a></li>
        <li><a href="<c:url value='/productpage/Wearables' />">Wearables</a></li>
        <li class="divider"></li>
        <li class="dropdown-header">TV</li>
        <li><a href="<c:url value='/productpage/Full HD TV' />">Full HD</a></li> 
        <li><a href="<c:url value='/productpage/Ultra HD TV' />">Ultra HD</a></li>   
       </ul>
    </li>
    <li><a href="<c:url value='/AboutUs' />"><i class="fa fa-users fa-fw" aria-hidden="true"></i>&nbsp; About us</a></li>
    <li><a href="<c:url value='/ContactUs' />"><i class="fa fa-mobile fa-fw" aria-hidden="true"></i>&nbsp; Contact us</a></li>  
  </ul>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
     <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value='/AdminPage' />"><i class="fa fa-buysellads fa-fw" aria-hidden="true"></i> Admin Page</a></li>
      <li><a href="<c:url value='/Cart' />"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
      <li><a href="<c:url value='/logout' />"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
     </ul>
  </sec:authorize>
  <sec:authorize access="hasRole('ROLE_USER')">
     <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value='/Cart' />"><i class="fa fa-shopping-cart fa-fw" aria-hidden="true"></i> Cart</a></li>
      <li><a href="<c:url value='/logout' />"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
     </ul>
  </sec:authorize>
  <sec:authorize access="isAnonymous()">
  <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value='/login' />"><span class="glyphicon glyphicon-user"></span> Login</a></li>
      <li><a href="<c:url value='/register' />"><span class="glyphicon glyphicon-log-in"></span> Sign Up </a></li>
  </ul>
  </sec:authorize>
</div>
</nav>
