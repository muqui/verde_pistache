
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         <li><a href="#">Dama</a></li>
          <li><a href="#">Caballeros</a></li>
           <li><a href="#">Niños</a></li>
       
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
           <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Buscar">
        </div>
        <button type="submit" class="btn btn-default">Buscar</button>
      </form>
           <li><a href="#">Usuario</a></li>
        <li><a href="#">Carrito</a></li>
        
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
       
        <title>Verde Pistache</title>
    </head>
    <body>
     

        <div class="container">

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="/resources/images/uno.jpg" alt="Los Angeles" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Los Angeles</h3>
                            <p>LA is always so much fun!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="/resources/images/dos.jpg" alt="Chicago" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Chicago</h3>
                            <p>Thank you, Chicago!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="/resources/images/tres.jpg"   alt="New York" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>New York</h3>
                            <p>We love the Big Apple!</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>         
        </div >








<div class="container">
  
  <div class="row ">
    <div class="col-sm-6  " >
  <img src="/resources/images/5005.jpg" class="img-rounded" width="100%" height="360" alt="Cinque Terre">

     </div>   
     
    <div class="col-sm-3" >
    
               

 <div class="col-sm-12" >
    <img src="/resources/images/5007.jpg" class="img-rounded" width="100%"  height="180"alt="Cinque Terre">

      
    </div>

<div class="col-sm-12" >
     <img src="/resources/images/5006.jpg" class="img-rounded" width="100%" height="180"alt="Cinque Terre">

      
    </div>


    </div>
    <div class="col-sm-3" >
      <img src="/resources/images/5008.jpg" class="img-rounded" width="100%" height="360" alt="Cinque Terre">
    </div>
  </div>

</div>


<div class="container">
  <div class="row ">
    <div class="col-sm-3  " >
  <img src="/resources/images/5004.jpg" class="img-rounded" width="100%" height="360" alt="Cinque Terre">

     </div>   
     
    <div class="col-sm-3" >
    
               

   <img src="/resources/images/5002.jpg"  width="100%" height="360" alt="Cinque Terre">



    </div>
    <div class="col-sm-6">
          
     <a href="/detalle?c=10204050"> <img src="/resources/images/tres.jpg" width="100%" height="360" alt="Cinque Terre"></a>
    </div>
  </div>

</div>













<!-- Footer -->
<footer class="page-footer font-small blue pt-4 mt-4">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-12 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase">Footer Content</h5>
        <p>Here you can use rows and columns here to organize your footer content.</p>

      </div>
     

</footer>
<!-- Footer -->





    </body>
</html>


