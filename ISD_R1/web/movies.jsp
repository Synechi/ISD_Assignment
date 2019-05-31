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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="isd1.css">
    </head>

    <%
        DBManager manager = (DBManager) session.getAttribute("manager");
        User user = (User) session.getAttribute("user");
        boolean userMember = false;
        boolean userStaff = false;
        boolean userExists = false;
        boolean itemInCart = false;
        if (user != null) {
            userExists = true;
            if (user.getAccType() == 1) {
                userMember = true;
            }
            if (user.getAccType() == 2) {
                userStaff = true;
            }
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
                        <li><a href="index.jsp" title="Home" > Home </a></li>	
                        <li><a href="movies.jsp" title="Movies" id="active"> Movies </a></li>
                            <% if (userExists) {%>
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

    <body>

        <!-- Table of Movies -->
    <center><h2>List of Movies</h2></center>
    <div >
        <table style="overflow-x: auto; overflow-y: auto;" class="movieTable">
            <tr>
            <form action="searchMovie.jsp" method="post">
                <th colspan="6">
                    <input type="text" placeholder="Search..." name="search">
                </th>
                <th colspan="1">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </th>
            </form>

            </tr>
            <tr>
                <th>Movie Title</th>
                <th>Movie Release Date</th>
                <th>Genre</th>
                <th>Price</th>
                <th>Stock</th>
            </tr>
            <% if (movieList.size() == 0) { %>
            <tr>
                <td style="text-align: center" colspan="5">No Movies Currently Avaliable!</td>
            </tr>
            <%} else {
                for (Movie movie : movieList) {
            %> 
            <tr>
                <td> <%=movie.getTitle()%> </td>
                <td> <%=movie.getReleaseyr()%> </td>
                <td> <%=movie.getGenre()%> </td>
                <td> $<%=movie.getFormPrice()%> </td>
                <td> <%=movie.getStock()%> </td>
                <td> 
                    <form action="editMovie.jsp" method="post">
                        <input type="hidden" name="movieID" value="<%=movie.getID()%>"/>
                        <button type="submit"><i class="fas fa-cog"></i></button>
                    </form>
                </td>
                <td> 
                    <form action="rmvMovieAction.jsp" method="post">
                        <input type="hidden" name="movieID" value="<%=movie.getID()%>"/>
                        <button type="submit"><i class="fas fa-minus"></i></i></button>
                    </form>
                </td>
                <td> 
                    <form action="addCartAction.jsp" method="post">
                        <input type="hidden" name="movieID" value="<%=movie.getID()%>"/>
                        <button type="submit">Add to Cart</button>
                    </form>
                </td>

            </tr> 
            <%
                    }
                }
            %> 
            <%
            %>
        </table>
    </div>

    <div class="movieListEdit">
        <a href="addMovie.jsp"><img src="source/plus.svg" alt="Add Movie" class="movieListIcon"></a>
    </div>                           
</body>
</html>
