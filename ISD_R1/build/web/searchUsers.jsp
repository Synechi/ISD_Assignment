<%-- 
    Document   : searchUsers
    Created on : 30/05/2019, 11:53:35 PM
    Author     : Griffin
--%>

<%@page import="Model.dao.DBManager"%>
<%@page import="Model.*"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
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

     //User List
     
     ArrayList<User> userList = manager.searchUser(request.getParameter("search"));
   %>

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
        
        <!--Table of Users -->
    <center><h2>All Users</h2></center>
        <div>
            <table class="movieTable" style="overflow-x: auto; overflow-y: auto;">
                <tr>
                    <form action="searchUsers.jsp" method="post">
                        <th colspan="6">
                            <input type="text" placeholder="Search..." name="search">
                        </th>
                        <th colspan="1">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </th>
                    </form>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Account Type</th>
                </tr>
                <% if(userList.size() == 0) { %>
                    <tr>
                        <td style="text-align: center" colspan="5">No Users Matching Search!</td>
                    </tr>
                        <%} else { 
                            for (User users : userList) {
                        %> 
                    <tr>
                        <td> <%=users.getID() %></td>
                        <td> <%=users.getName() %> </td>
                        <td> <%=users.getUsername() %> </td>
                        <td> <%=users.getEmail() %> </td>
                        <td> <%=users.getAccType() %></td>
                        <td> 
                            <form action="adminEditAccount.jsp" method="post">
                                <input type="hidden" name="userID" value="<%=users.getID() %>"/>
                                    <button type="submit"><i class="fas fa-cog"></i></button>
                                </form>
                        </td>
                        <td> 
                            <form action="delete.jsp" method="post">
                                <input type="hidden" name="userID" value="<%=users.getID() %>"/>
                                    <button type="submit"><i class="fas fa-minus"></i></button>
                            </form>
                        </td>
                    </tr>
                    <%
                               }
                            }
                    %> <%%>
            </table>
        </div>
    
        <div class="userListEdit">
            <a href="adminAddAccount.jsp"><img src="source/plus.svg" alt="Add User" class="userListIcon"></a>
        </div>
    </body>
</html>
