<%-- 
    Document   : editMovie
    Created on : 28/05/2019, 5:34:57 PM
    Author     : Evan
--%>
<%@page import="Model.*"%>
<%@page import="Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Movie</title>
        <link rel="stylesheet" href="isd1.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <% 
        DBManager manager = (DBManager)session.getAttribute("manager");
        Movie movie = manager.findMovie(Integer.parseInt(request.getParameter("movieID")));
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
        <center><h2>Edit <%= movie.getTitle()%></h2></center>
        <form action="editMovieAction.jsp" method="post">
            <table class="addMovTable">
                <caption>* Indicates required.</caption>
                    <tr>
                        <th class="field" colspan="2">Title: <input type="text" name="Title" size="50" required value="<%= movie.getTitle()%>"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Movie Release Date: <input type="date" name="ReleaseYr" required value="<%= movie.getReleaseyr()%>"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Genre: <input type="text" name="Genre" size="50" required value="<%= movie.getGenre()%>"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Price: <input type="number" name="Price" required value="<%= movie.getPrice()%>" step="0.01"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2">Stock: <input type="number" name="Stock" required value="<%= movie.getStock()%>"></th>                           
                    </tr>
                    <tr>
                            <th>                                
                                <input type="hidden" name="movieID" value="<%=movie.getID() %>"/>
                                <input type="hidden" name="movieTitle" value="<%=movie.getTitle() %>"/>
                                <input class="button" type="submit" value="Edit Movie" name="submit" >                                 
                            </th>
                            <th><p style="color: red;"><c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p></th>
                    </tr>
            </table>
        </form>
        ${existErr = null}
    </body>
</html>
