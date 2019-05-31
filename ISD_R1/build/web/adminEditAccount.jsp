<%-- 
    Document   : adminEditAccount
    Created on : 31/05/2019, 4:49:48 PM
    Author     : Griffin
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
        <title>User's Account</title>
        <link rel="stylesheet" href="isd1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <%  DBManager manager = (DBManager)session.getAttribute("manager");
        User currentUser = manager.findUserID(Integer.parseInt(request.getParameter("userID")));
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
                            <li><a href="account.jsp" title="User Details"> User Details </a></li>
                            <% if(user.getAccType()==2) {%>
                            <li><a href="searchUsers.jsp" title="Admin"> Admin </a></li>
                            <% } %>
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
       
    <center><h2>My Account</h2></center>
        <form action="editAction.jsp" method="POST">
            <center><table>
                
                <tr><td>Name</td><td><input type="text" value="<%= currentUser.getName()%>" name="name" maxlegth="50"></td></tr>
                <tr><td>Email</td><td><input type="email" value="<%= currentUser.getEmail()%>" name="email" maxlength="50"></td></tr>  
                <tr><td>Username</td><td><input type="text" value="<%= currentUser.getUsername()%>" name="userName" maxlength="50"></td></tr>
                <tr><td>Password</td><td><input type="password" value="<%= currentUser.getPassword()%>" name="password" maxlength="50"></td></tr
                <tr><td>Street Address</td><td><input type="text" value="<%= currentUser.getAddress()%>" name="address" maxlength="100"></td></tr>
                <tr><td>City</td><td><input type="text" value="<%= currentUser.getCity()%>" name="city" maxlength="50"></td></tr>
                <tr><td>State</td><td><input type="text" value="<%= currentUser.getState()%>" name="state" maxlength="50"></td></tr>
                <tr><td>Country</td><td><input type="text" value="<%= currentUser.getCountry()%>" name="country" maxlength="50"></td></tr>
                <tr><td>Postcode</td><td><input type="text" value="<%= currentUser.getPostcode()%>" name="postcode" maxlength="50"></td></tr>
                <tr><td>Date of Birth</td><td><input type="date" value="<%= currentUser.getDob()%>" name="dob" maxlength="10"></td></tr> 
                
                <tr><td><input type="hidden" value="updated" name="updated"></td>
                    <td><input class="button" type="submit" value="Edit Details"> </td>
                    <td> <p style="color: red;"><c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p> </td>
                
                <tr>
                    <td> 
                        <form action="delete.jsp" method="post">
                              <input type="hidden" name="userID" value="<%=currentUser.getID() %>"/> 
                                    <button type="submit" class="button">Delete Account</button>
                        </form>   
                    </td>
                </tr>
                 
                
                <tr><td><button class="button" type="button" onclick="location.href = 'index.jsp'" > Home </button></td></tr>
                    
                </tr>
                </table> </center>
        </form>
               
    </body>
</html>