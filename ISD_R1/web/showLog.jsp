<%-- 
    Document   : showLog
    Created on : 29/05/2019, 4:49:20 PM
    Author     : emily
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Log"%>
<%@page import="Model.User"%>
<%@page import="Model.dao.DBManager"%>
<%@page import="Controller.*"%>
<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Logs</title>
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

        ArrayList<Log> logList = new ArrayList();
        logList = manager.searchLogs(user.getID());
    %>
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

        <form action="account.jsp" method="POST">
            <td><input class="button" type="submit" value="Delete Logs" onclick="<% manager.deleteLogs(user.getID());%>"> </td>
        </form>
        <table style="overflow-x: auto; overflow-y: auto;" class="movieTable">
            <form action="searchLogs.jsp" method="post">
                <th colspan="6">
                    <input type="date" placeholder="Search..." name="search">
                </th>
                <th colspan="1">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </th>
            </form>

            <tr>
                <th>Log ID</th>
                <th>Log Description</th>
            </tr>
            <% if (logList.size() == 0) { %>
            <tr>
                <td style="text-align: center" colspan="5">No Logs found.</td>
            </tr>
            <%} else {
                for (Log log : logList) {
            %> 

            <tr>
                <td> <%=log.getID()%> </td>
                <td> <%=log.getDescription()%> </td>
            </tr>
            <%
                    }
                }
            %> <%%>
        </table>            
    </body>
</html>
