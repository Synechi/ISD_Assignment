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
<!DOCTYPE html>
<html>
    <head>
       
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="ISD CSS.css">
        <title>My Account</title>
        <link rel="stylesheet" href="isd1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
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
                                    <a class="nav-link" href="checkout.jsp">CHECKOUT</a>
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
        <% User user = (User) session.getAttribute("userEdit");  %>
        <h1>Account Details:</h1>
        <form action="account.jsp" method="POST">
            <table>
                
                <tr><td>Name</td><td><input type="text" value="<%= user.getName()%>" name="name"></td></tr>
                <tr><td>Email</td><td><input type="text" value="<%= user.getEmail()%>" name="email"></td></tr>  
                <tr><td>Username</td><td><input type="text" value="<%= user.getUsername()%>" name="name"></td></tr>
                <tr><td>Password</td><td><input type="password" value="<%= user.getPassword()%>" name="password"></td></tr
                <tr><td>Street Address</td><td><input type="text" value="<%= user.getAddress()%>" name="name"></td></tr>
                <tr><td>City</td><td><input type="text" value="<%= user.getCity()%>" name="name"></td></tr>
                <tr><td>State</td><td><input type="text" value="<%= user.getState()%>" name="name"></td></tr>
                <tr><td>Country</td><td><input type="text" value="<%= user.getCountry()%>" name="name"></td></tr>
                <tr><td>Postcode</td><td><input type="text" value="<%= user.getPostcode()%>" name="name"></td></tr>
                <tr><td>Date of Birth</td><td><input type="date" value="<%= user.getDob()%>" name="dob"></td></tr> 
                
                <tr><td><input type="hidden" value="updated" name="updated"></td>
                    <td><input class="button" type="submit" value="Edit Details"> 
                        
                        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Home </button>
                        <button class="button" type="button" onclick="location.href = 'deleteAction.jsp'" > Delete Account </button>
                    </td>
                </tr>
            </table>
        </form>
               <% DBManager manager = (DBManager)session.getAttribute("manager"); 

             String username = request.getParameter("Username");
            String email = request.getParameter("Email");            
            boolean validEmail = manager.checkEmail(email);
            boolean validUsername = manager.checkUsername(username);
            
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String postcode = request.getParameter("postcode");
        String dob = request.getParameter("dob");
                manager.updateUser(user.getID(), name, email, username, password, address, city, state, country, postcode, dob);
                        
                User userEdit = manager.findUserID(user.getID());

                if (userEdit != null) {
                    session.setAttribute("user", userEdit);
                %>
    </body>
</html>
