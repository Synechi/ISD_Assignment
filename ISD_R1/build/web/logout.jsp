<%-- 
    Document   : logout
    Created on : 24/05/2019, 12:00:18 AM
    Author     : Ben
--%>


<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="Model.User"%>
<%@page import="Model.dao.DBManager"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            User user = (User) session.getAttribute("user");
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
            LocalDateTime now = LocalDateTime.now();
            String desc = "";
            desc = user.getName() + " logged in at " + dtf.format(now);
            java.sql.Date sqlDate = new java.sql.Date(System.currentTimeMillis());
 
            manager.addLog(desc, user.getID(), sqlDate);
            session.invalidate();
             
        %>
        You have been logged out.
        Click here to go to<a href="index.jsp" title="Home"> Home </a>page.

    </body>
</html>
