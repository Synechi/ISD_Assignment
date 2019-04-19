<%--
  Created by IntelliJ IDEA.
  User: Evan
  Date: 3/04/2019
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Store</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="isd1.css">

  </head>

  <!--TOP NAVIGATION BAR-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="nav">
            
        <a class="navbar-brand" href="index.jsp"><img src="http://i65.tinypic.com/19p84o.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
         
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
        <!--HOME,MOVIES,ABOUT-->
        
                    <div class="container-fluid">
                        <div class="row">
                                <div class="float-right">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.jsp">HOME</a>
                                    </li>
                                </div>
                                <div class="col-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies.jsp">MOVIES</a>
                                    </li>
                                </div>
                                <div class="col-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.jsp">ABOUT</a>
                                    </li>
                                </div>
                        </div>
                    </div>
                    
                <!--LOGIN, SIGNUP-->
                    <div class="col-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="login.jsp">LOGIN</a>
                            </li>   
                        </div>
                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="signup.jsp">REGISTER</a>
                            </li>
                        </div>
                                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="checkout.jsp">CHECKOUT</a>
                            </li>
                        </div>
            </ul>          

                    </div>
        </div>        
    </nav>



  <!---NEW MOVIE BANNER-->
  <div class="jumbotron">
    <h1 class="display-4">HELLBOY</h1>
    <p class="lead"><span>Hellboy is a 2019 American supernatural superhero film based on the Dark Horse Comics character of the same name.</span></p>
    <hr class="my-4">
    <p class="lead">
      <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
    </p>
  </div>
  
   <!---CARDS--->
        
        
  <center><h2> NEWEST RELEASES </h2> </center>
            <section class="cards">
                 
    <article class="card">
                   <p><img src="https://cdn.eventcinemas.com.au/cdn/resources/movies/13182/images/largeposter.jpg" alt="us" height="305" width="200"></p>
            </article><!-- /card-one -->
 
    <article class="card">
                   <p><img src="https://cdn.eventcinemas.com.au/cdn/resources/movies/13186/images/largeposter.jpg" alt="petsem" height="305" width="200"></p>
            </article><!-- /card-two -->
 
    <article class="card">
                   <p><img src="https://cdn.eventcinemas.com.au/cdn/resources/movies/13319/images/largeposter.jpg" alt="5feet" height="305" width="200"></p>
            </article><!-- /card-three -->
 
    <article class="card">
                    <p><img src="https://cdn.eventcinemas.com.au/cdn/resources/movies/13175/images/largeposter.jpg" alt="cptmarv" height="305" width="200"></p>
            </article><!-- /card-four -->
            
    <article class="card">
                    <p><img src="https://cdn.eventcinemas.com.au/cdn/resources/movies/13298/images/largeposter.jpg" alt="indian" height="305" width="200"></p>
            </article><!-- /card-three -->
            
    <article class="card">
                    <p><img src="https://cdn.eventcinemas.com.au/cdn/resources/movies/13629/images/largeposter.jpg" alt="chinese" height="305" width="200"></p>
            </article><!-- /card-three -->

    </section>
  </body>

  

</html>
