<%-- 
    Document   : registerAddMovie
    Created on : 27/05/2019, 5:47:19 PM
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
        boolean validTitle = manager.checkMovie(title);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        
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
            response.sendRedirect("addMovie.jsp");      
            return;
        }
        if (!validStock) {
            session.setAttribute("existErr", "Please enter a stock amount greater than 0.");
            response.sendRedirect("addMovie.jsp");      
            return;
        }
        if (!validPrice) {
            session.setAttribute("existErr", "Please enter a price amount greater than 0.");
            response.sendRedirect("addMovie.jsp");      
            return;
        }
        else{ 
            java.util.Date date = format.parse(relYr);
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());

            int id = (new Random()).nextInt(999999);
            manager.addMovie(id, title, sqlDate, genre, price, stock, status);
            response.sendRedirect("movies.jsp");
        }
        

        %>
    </body>
</html>