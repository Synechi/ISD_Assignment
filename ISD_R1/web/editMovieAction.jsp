<%-- 
    Document   : editMovieAction
    Created on : 28/05/2019, 6:05:36 PM
    Author     : Evan
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
        <title>Register - Add Movie</title>
    </head>
    <body>
        <%  
        DBManager manager = (DBManager)session.getAttribute("manager");    
        String title = request.getParameter("Title");
        String relYr = request.getParameter("ReleaseYr");
        String genre = request.getParameter("Genre");
        double price = Double.parseDouble(request.getParameter("Price"));
        int stock = Integer.parseInt(request.getParameter("Stock"));
        boolean status = false;
        boolean validStock = false;
        boolean validPrice = false;
        boolean validTitle = false;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        
        String oldMovieTitle = request.getParameter("movieTitle");
        if (title == oldMovieTitle) {
            validTitle = true;
        }

        if (stock >= 0 ) {
            validStock = true;
        }
        if (stock > 0) {
            status = true;
        }
        if (price >= 0) {
            validPrice = true;
        }
        
        if (!validTitle) {
            session.setAttribute("existErr", "Movie already in catalogue!");
            response.sendRedirect("movies.jsp");      
            return;
        }
        if (!validStock) {
            session.setAttribute("existErr", "Please enter a stock amount greater than or equal to 0.");
            response.sendRedirect("movies.jsp");      
            return;
        }
        if (!validPrice) {
            session.setAttribute("existErr", "Please enter a price amount greater than 0.");
            response.sendRedirect("movies.jsp");      
            return;
        }
        else{ 
            java.util.Date date = format.parse(relYr);
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());

            int id = Integer.parseInt(request.getParameter("movieID"));
            manager.updateMovie(id, title, sqlDate, genre, price, stock, status);
            response.sendRedirect("movies.jsp");
        }
        

        %>
    </body>
    
</html>