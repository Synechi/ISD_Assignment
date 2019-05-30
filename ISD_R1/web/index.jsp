<%--
  Created by IntelliJ IDEA.
  User: Evan
  Date: 3/04/2019
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Model.dao.DBManager"%>
<%@page import="Model.User"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Store</title>
    
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="isd1.css">

  </head>
  <body>
  <% User user = (User) session.getAttribute("user"); 
     boolean userMember = false;
     boolean userStaff = false;
     boolean userExists = false;
     boolean itemInCart = false;
     if (user != null) 
     { userExists = true; 
         if (user.getAccType() == 1)
     {userMember = true;}
     if (user.getAccType() == 2)
     {userStaff = true;}
     }
   
   %>

  <!--TOP NAVIGATION BAR-->
    <header class="clearfix">
            <div class="navigation">
                <a href="index.jsp"><img src="source/logo.png" alt="OMS" class="title"></a>
                <nav>
                    <div class="navlist">
                        <ul>
                            <li><a href="index.jsp" title="Home"  id ="active"> Home </a></li>	
                            <li><a href="movies.jsp" title="Movies"> Movies </a></li>
                            <% if(userExists) {%>
                            <li><a href="logout.jsp" title="Logout"> Logout </a></li>
                            <li><a href="account.jsp" title="User Details">User Details </a></li>
                            <li><a href="orderHistory.jsp" title="Order History">Order History</a></li>
                            <%} else { %>
                            <li><a href="login.jsp" title="Login"> Login </a></li>
                            <li><a href="signup.jsp" title="Reigster"> Register </a></li>
                            <%} %>
                            <li><a href="cart.jsp" title="Cart"><i class="fas fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
</html>



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
  <jsp:include page="/ConnServlet" flush="true" />
  </body>

  

</html>
