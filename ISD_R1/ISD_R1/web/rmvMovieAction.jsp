<%-- 
    Document   : rmvMovieAction
    Created on : 28/05/2019, 5:20:53 PM
    Author     : Evan
--%>
<%@page import="Model.*"%>
<%@page import="Model.dao.*"%>
<%@page import="Controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Movie Action</title>
    </head>
    <body>
        <%
           DBManager manager = (DBManager)session.getAttribute("manager"); 
           manager.rmvMovie(Integer.parseInt(request.getParameter("movieID")));        
           response.sendRedirect("movies.jsp"); 
        %>
    </body>
</html>
