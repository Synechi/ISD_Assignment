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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
     <% User user = (User) session.getAttribute("user"); 
 boolean userMember = false;
     boolean userStaff = false;
         if (user.getAccType() == 1)
     {userMember = true;}
     if (user.getAccType() == 2)
     {userStaff = true;}
     %>
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
                                <a class="nav-link" href="account.jsp">MY ACCOUNT</a>
                            </li>   
                        </div>
                        <div class="col-auto">
                            <li class="nav-item">
                                    <% if(userMember) { %> <a class="nav-link" href="checkout.jsp">CHECKOUT</a> <% } %>
                               
                            </li>
                        </div>
                                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="logout.jsp">LOGOUT</a>
                            </li>
                        </div>
            </ul>          

                    </div>
        </div>        
    </nav>
    <body>
       
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
                    <td><input class="button" type="submit" value="Edit Details"> </td>
                    <td> <p style="color: red;"><c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p> </td>
                
<<<<<<< HEAD
                <tr><td> <button class="button" type="button" onclick="location.href = 'deleteAction.jsp'" > Delete Account </button></td></tr>
                        <tr><td><button class="button" type="button" onclick="location.href = 'index.jsp'" > Home </button></td></tr>
=======
                <tr><td> <button class="button" type="button" onclick="location.href='delete.jsp'" > Delete Account </button></td></tr>
                 
                
                <tr><td><button class="button" type="button" onclick="location.href = 'index.jsp'" > Home </button></td></tr>
>>>>>>> master
                    
                </tr>
                </table> </center>
        </form>
               
    </body>
</html>
