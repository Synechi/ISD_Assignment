

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="Model.User"%>
<%@page import="Model.*"%>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
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
                            <li><a href="movies.jsp" title="Movies" > Movies </a></li>
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
                           
                            <li><a href="cart.jsp" title="Cart"><i class="fas fa-shopping-cart"></i></a></li>
                           
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
                                 
 
    <body>
        
    <center> <h2>Delete Account</h2></center>
    <center> <h3> Click "Delete" to proceed in account deletion. Click "Cancel" to return. </h3>
        
            <center><table>
                    <tr><td>
                            <form action="deleteAction.jsp" method="post">
                                <input type="hidden" name="userID" value="<%=currentUser.getID() %>"/>
                                    <button type="submit" class="button">Delete</button>
                            </form>
                            
                            <!--<button class="button" type="button" onClick="location.href='deleteAction.jsp'"> Delete -->
                        </td>
                        <td> <button class="button" type="button" onclick="history.go(-1)"> Cancel </button></td>
                    </tr>
                </table>
            </center>
        
    </body>
       </html>