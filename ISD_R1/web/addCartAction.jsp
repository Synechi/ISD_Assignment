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
        <title>Add To Cart Action</title>
    </head>
    <body>
        <%
            DBManager manager = (DBManager)session.getAttribute("manager");
            int id = (new Random()).nextInt(999999);
            
            boolean validStock = false;
            
            if (stock > 0) {
                validStock = true;
            }
            else {
            manager.addToCart(id, title, price);
            response.sendRedirect("movies.jsp");
            }
        %>
    </body>
</html>


