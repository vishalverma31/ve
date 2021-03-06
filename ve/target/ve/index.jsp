<html>
<head>
  <title>Landing Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://use.fontawesome.com/034feea29c.js"></script>
  <style>
  body {
    background-image: url("cool-background.jpg");
  }
  .carousel-inner > .item > img,
  .carousel-inner > .tem > a > img{  height:280px; }
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
<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fuild">
  <div class="navbar-header">
    <a class="navbar-brand" href="#"><img src="logo.png" alt="VE" height="30" class="img-rounded"></img></a>
  </div>
  <ul class="nav navbar-nav">
    <li><a href="index.jsp"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-product-hunt fa-fw" aria-hidden="true"></i>&nbsp; Products <span class="caret"> </span></a>
      <ul class="dropdown-menu">
       <li class="dropdown-header">Portable Devices:</li>
        <li><a href="#">Laptops</a></li>
        <li><a href="#">Portable Speakers</a></li>
        <li><a href="#">Ipod</a></li>
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
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-user"></span> Login</a></li>
      <li><a href="Register.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign Up </a></li>
  </ul>
</div>
</nav>

<!-- Carousel code -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="img-responsive center-block" src="iphone.JPG" alt="Iphone">
    </div>

    <div class="item">
      <img class="img-responsive center-block" src="washingm.JPG" alt="Washing Machines">
    </div>

    <div class="item">
      <img class="img-responsive center-block" src="sdc.JPG" alt="SD Card">
    </div>

    <div class="item">
      <img class="img-responsive center-block" src="tv.JPG" alt="TV">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!-- Youtube Video-->
<div class="container-fluid" align="right">
<iframe width="420" height="150" src="https://www.youtube.com/embed/Q6dsRpVyyWs">
</iframe>
</div>

<!-- Footer -->
<footer class="footer" id="footer">
   <div class="container">
     <div class="row">
        <div class="col-sm-6">
           <span class="copyright text-inverse">Copyright � V Electronics Inc. 2016</span>
        </div>
        <div class="col-sm-6">
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="#"><i class="fa fa-2x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-2x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-2x fa-fw fa-facebook text-inverse"></i></a>
              </div>
            </div>
        </div>
      </div>		
    </div>
</footer>
</body>
</html>
