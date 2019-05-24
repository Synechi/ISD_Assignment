<%-- 
    Document   : welcome
    Created on : 23/05/2019, 8:02:30 PM
    Author     : Ben
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="Model.User"%>
<%@page import="Model.dao.DBManager"%>
<%@page import="java.sql.*"%>
<%@page import="Controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="ISD CSS.css">
        <title>Welcome</title>
        <link rel="stylesheet" href="isd1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
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
                                <a class="nav-link" href="account.jsp">MY ACCOUNT</a>
                            </li>   
                        </div>
                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="checkout.jsp">CHECKOUT</a>
                            </li>
                        </div>
                                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="logout.jsp">LOGOUT</a>
                            </li>
                        </div>
            </ul>          

                    </div>
        </div>        
    </nav>

       <%        
        String fName = request.getParameter("Name");
        String lName = request.getParameter("name2");
        String name = fName + " " + lName;
        String email = request.getParameter("Email");
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String address = request.getParameter("Address");
        String city = request.getParameter("City");
        String state = request.getParameter("State");
        String country = request.getParameter("Country");
        String postcode = request.getParameter("Postcode");
        String dob = request.getParameter("DOB");
       // SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
       // Date date = formatter.parse(dob);
       // java.sql.Date sqlDate = new java.sql.Date(date.getTime());      
        
        int key = (new Random()).nextInt(999999);         
                              
        User user = new User(key, name, email, username, password, address, city, state, country, postcode, dob, 1);
        session.setAttribute("user", user);
        DBManager manager = (DBManager)session.getAttribute("manager");
        //manager.addUser(key, name, email, username, password, address, city, state, country, postcode, dob, 1);        
                                 %>
                                 
 
    <body>
        
    <center> <h2>Welcome to the Online Movie Store <%=name%> </h2></center>
    <center> <h3> Click <a href="index.jsp"> here <a> to continue </h3>
    </body>
       </html>
