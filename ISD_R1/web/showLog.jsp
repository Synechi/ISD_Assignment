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
    <body>
        <form action="account.jsp" method="POST">
            <td><input class="button" type="submit" value="Delete Logs" onclick="<% manager.deleteLogs(user.getID());%>"> </td>
        </form>
        <table style="overflow-x: auto; overflow-y: auto;" class="movieTable">
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
