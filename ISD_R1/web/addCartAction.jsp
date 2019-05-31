<%-- 
    Document   : addCartAction
    Created on : 29/05/2019, 5:53:47 PM
    Author     : ivycheung
--%>

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
        <title>Add To Order Action</title>
    </head>
    <body>
        
        <%
        int id = Integer.parseInt(request.getParameter("movieID"));
       
        String title = request.getParameter("title");
        double price = Double.parseDouble(request.getParameter("Price"));
        
        DBManager manager = (DBManager)session.getAttribute("manager");                                                                                                 
        int orderID = (new Random()).nextInt(999999);
        manager.addToOrder(id, title, price);
        response.sendRedirect("movies.jsp");

           %>
    </body>
</html>