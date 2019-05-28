<%-- 
    Document   : welcome
    Created on : 23/05/2019, 8:02:30 PM
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
        <title>Welcome</title>
        <link rel="stylesheet" href="isd1.css">
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
        
    <center> <h2>Welcome to the Online Movie Store <%=user.getName()%> </h2></center>
    <center> <h3> Click <a href="index.jsp"> here <a> to continue </h3>
    
    </body>
       </html>
