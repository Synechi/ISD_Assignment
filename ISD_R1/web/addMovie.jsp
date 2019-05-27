<%-- 
    Document   : addMovie
    Created on : 27/05/2019, 5:20:19 PM
    Author     : Evan
--%>
<%@page import="Model.dao.DBManager"%>
<%@page import="Model.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Movie Store</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="isd1.css">
</head>

 <% User user = (User) session.getAttribute("user"); 
     boolean userMember = false;
     boolean userStaff = false;
     boolean userExists = false;
     if (user != null) 
     { userExists = true; 
         if (user.getAccType() == 1)
     {userMember = true;}
     if (user.getAccType() == 2)
     {userStaff = true;}
     }
   
   %>
    <body>
        <!--TOP NAVIGATION BAR-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="nav">
            
        <a class="navbar-brand" href="index.jsp"><img src="http://i65.tinypic.com/19p84o.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
         
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
        <!--HOME,MOVIES,ABOUT-->
        
                    <div class="container-fluid">
                        <div class="row">
                                <div class="float-right">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.jsp">HOME</a>
                                    </li>
                                </div>
                                <div class="col-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="movies.jsp">MOVIES</a>
                                    </li>
                                </div>
                                <div class="col-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.jsp">ABOUT</a>
                                    </li>
                                </div>
                        </div>
                    </div>
                    
                <!--LOGIN, SIGNUP-->
                
                    <div class="col-auto">
                            <li class="nav-item">
                               <% if(userExists) { %> <a class="nav-link" href="account.jsp">MY ACCOUNT</a> <% } %>
                               <% if (!userExists) { %> <a class="nav-link" href="login.jsp">LOGIN</a> <% } %>
                            </li>   
                        </div>
                        <div class="col-auto">
                            <li class="nav-item">
                                    <% if(userMember) { %> <a class="nav-link" href="checkout.jsp">CHECKOUT</a> <% } %>
                               <% if (!userExists) { %> <a class="nav-link" href="signup.jsp">REGISTER</a> <% } %>
                            </li>
                        </div>
                            <div class="col-auto">
                            <li class="nav-item">
                                    <% if(userExists) { %> <a class="nav-link" href="logout.jsp">LOGOUT</a> <% } %>
                               
                            </li>
          
                        </div>
            </ul>          

                    </div>
        </div>        
    </nav>
        <center><h2>Add Movie</h2></center>
        <form action="registerAddMovie.jsp" method="post">
            <table>
                <caption>* Indicates required.</caption>
                    <tr>
                        <th class="field" colspan="2"><input type="text" name="Title" size="50" required placeholder="Movie Title*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2"><input type="date" name="ReleaseYr" required placeholder="Year of Release*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2"><input type="text" name="Genre" size="50" required placeholder="Genre*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2"><input type="number" name="Price" required placeholder="Price*"></th>                           
                    </tr>
                    <tr>
                        <th class="field" colspan="2"><input type="number" name="Stock" required placeholder="Stock*"></th>                           
                    </tr>
                    <tr>
                            <th>                                
                                <input class="button" type="submit" value="AddMovie" name="submit" >                                 
                            </th>
                            <th><p style="color: red;"><c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p></th>
                    </tr>
            </table>
        </form>
        ${existErr = null}
    </body>
</html>
