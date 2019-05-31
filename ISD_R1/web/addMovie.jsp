<%-- 
    Document   : addMovie
    Created on : 27/05/2019, 5:20:19 PM
    Author     : Evan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Model.dao.DBManager"%>
<%@page import="Model.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Store</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
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
                            <li><a href="index.jsp" title="Home" > Home </a></li>	
                            <li><a href="movies.jsp" title="Movies" id="active"> Movies </a></li>
                            <% if(userExists) {%>
                            <li><a href="logout.jsp" title="Logout"> Logout </a></li>
                            <li><a href="account.jsp" title="User Details">User Details </a></li>
                            <li><a href="orderHistory.jsp" title="Order History">Order History</a></li>
                            <% if(user.getAccType()==2) {%>
                            <li><a href="searchUsers.jsp" title="Admin"> Admin </a></li>
                            <% } %>
                            <%} else { %>
                            <li><a href="login.jsp" title="Login"> Login </a></li>
                            <li><a href="signup.jsp" title="Reigster"> Register </a></li>
                            <%} %>
                            <% if (itemInCart) { %>
                            <li><a href="cart.jsp" title="Checkout"> Checkout </a></li>
                            <%} %>
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
        <center><h2>Add Movie</h2></center>
        <form action="addMovieAction.jsp" method="post">
            <table class="addMovTable">
                <caption>* Indicates required.</caption>
                    <tr>
                        <th class="field" colspan="2">Title: <input type="text" name="Title" size="50" required placeholder="Movie Title*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Movie Release Date: <input type="date" name="ReleaseYr" required placeholder="Year of Release*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Genre: <input type="text" name="Genre" size="50" required placeholder="Genre*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Price: <input type="number" name="Price" required placeholder="Price*" step="0.01"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Stock: <input type="number" name="Stock" required placeholder="Stock*"></th>                           
                    </tr>
                    <tr>
                            <th>                                
                                <input class="button" type="submit" value="Add Movie" name="submit" >                                 
                            </th>
                            
                            <th><p style="color: red;"> <c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p></th>
                    </tr>
            </table>
        </form>
        ${existErr = null}
    </body>
</html>
