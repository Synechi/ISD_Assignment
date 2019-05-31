<%-- 
    Document   : account
    Created on : 24/05/2019, 12:00:06 AM
    Author     : Ben
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="Model.User"%>
<%@page import="Model.dao.DBManager"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
       
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="ISD CSS.css">
        <title>My Account</title>
        <link rel="stylesheet" href="isd1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
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
    <body
       
    <center><h2>My Account</h2></center>
        <form action="editAction.jsp" method="POST">
            <center><table>
                
                <tr><td>Name</td><td><input type="text" value="<%= user.getName()%>" name="name" maxlegth="50"></td></tr>
                <tr><td>Email</td><td><input type="email" value="<%= user.getEmail()%>" name="email" maxlength="50"></td></tr>  
                <tr><td>Username</td><td><input type="text" value="<%= user.getUsername()%>" name="userName" maxlength="50"></td></tr>
                <tr><td>Password</td><td><input type="password" value="<%= user.getPassword()%>" name="password" maxlength="50"></td></tr
                <tr><td>Street Address</td><td><input type="text" value="<%= user.getAddress()%>" name="address" maxlength="100"></td></tr>
                <tr><td>City</td><td><input type="text" value="<%= user.getCity()%>" name="city" maxlength="50"></td></tr>
                <tr><td>State</td><td><input type="text" value="<%= user.getState()%>" name="state" maxlength="50"></td></tr>
                <tr><td>Country</td><td><input type="text" value="<%= user.getCountry()%>" name="country" maxlength="50"></td></tr>
                <tr><td>Postcode</td><td><input type="text" value="<%= user.getPostcode()%>" name="postcode" maxlength="50"></td></tr>
                <tr><td>Date of Birth</td><td><input type="date" value="<%= user.getDob()%>" name="dob" maxlength="10"></td></tr> 
                
                <tr><td><input type="hidden" value="updated" name="updated"></td>
                    <td><input type="id" value="<%= user.getID()%>"</td>
                    <td><input class="button" type="submit" value="Edit Details"> </td>
                    <td> <p style="color: red;"><c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p> </td>
                
                <tr><td> <button class="button" type="button" onclick="location.href='delete.jsp'" > Delete Account </button></td></tr>
                 
                
                <tr><td><button class="button" type="button" onclick="location.href = 'index.jsp'" > Home </button></td></tr>
                    
                <tr><td><button class="button" type="button" onclick="location.href = 'showLog.jsp'" > View Access Logs </button></td></tr>
                </tr>
                </table> </center>
        </form>
    </body>
</html>
