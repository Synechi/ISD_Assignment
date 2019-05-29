<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.dao.*"%>
<%@page import="Controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Action</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
           DBManager manager = (DBManager)session.getAttribute("manager"); 
           User user = (User) session.getAttribute("user");
           manager.deleteUser(user.getID());
           session.setAttribute("user", null);         
                response.sendRedirect("index.jsp"); 
           
           
           %>
    </body>
</html>
