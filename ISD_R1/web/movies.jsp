<%--
  Created by IntelliJ IDEA.
  User: Evan
  Date: 18/04/2019
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="Model.dao.DBManager"%>
<%@page import="Model.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Store</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="isd1.css">
</head>

 <% 
     DBManager manager = (DBManager)session.getAttribute("manager");
     User user = (User) session.getAttribute("user"); 
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

     //Movie List
     
     ArrayList<Movie> movieList = manager.getMovies();
   %>

   <header class="clearfix">
            <div class="navigation">
                <a href="index.jsp"><img src="source/logo.png" alt="OMS" class="title"></a>
                <nav>
                    <div class="navlist">
                        <ul>
                            <li><a href="index.jsp" title="Home" id="active"> Home </a></li>	
                            <li><a href="movies.jsp" title="Movies"> Movies </a></li>
                            <% if(userExists) {%>
                            <li><a href="logout.jsp" title="Logout"> Logout </a></li>
                            <li><a href="account.jsp" title="User Details"> User Details </a></li>
                            <%} else { %>
                            <li><a href="login.jsp" title="Login"> Login </a></li>
                            <li><a href="signup.jsp" title="Reigster"> Register </a></li>
                            <%} %>
                            <% if (itemInCart) { %>
                            <li><a href="index.jsp" title="Checkout"> Checkout </a></li>
                            <%} %>
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
   
<body>
                                
                        <!-- Table of Movies -->
                        <div >
                            <table style="overflow-x: auto; overflow-y: auto;" class="movieTable">
                                <tr>
                                    <th>Movie Title</th>
                                    <th>Year of Release</th>
                                    <th>Genre</th>
                                    <th>Price</th>
                                    <th>Stock</th>
                                </tr>
                                <% for (Movie movie : movieList) {
                                %> 
                                <tr>
                                    <td> <%=movie.getTitle() %> </td>
                                    <td> <%=movie.getReleaseyr() %> </td>
                                    <td> <%=movie.getGenre() %> </td>
                                    <td> $<%=movie.getFormPrice() %> </td>
                                    <td> <%=movie.getStock() %> </td>
                                </tr> 
                                <%
                                }
                                %> <%%>
                            </table>
                        </div>
                                
    <a href="addMovie.jsp">Add Movie</a>
</body>
</html>
