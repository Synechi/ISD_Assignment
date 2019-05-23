<%-- 
    Document   : signup
    Created on : 17/04/2019, 4:16:38 PM
    Author     : Griffin
--%>


<%@page import="Model.dao.DBManager"%>
<%@page import="java.util.Random"%>
<%@page import="Model.User"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="ISD CSS.css">
        <title>Register</title>
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
                                <a class="nav-link" href="login.jsp">LOGIN</a>
                            </li>   
                        </div>
                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="signup.jsp">REGISTER</a>
                            </li>
                        </div>
                                        <div class="col-auto">
                            <li class="nav-item">
                                    <a class="nav-link" href="checkout.jsp">CHECKOUT</a>
                            </li>
                        </div>
            </ul>          

                    </div>
        </div>        
    </nav>
    <body>
          <!--TOP NAVIGATION BAR-->
        
       
        <center><h2>Register</h2></center>
            <form action="welcome.jsp" method="post">
                    <table class="signuptable" style="width:50%">
                        <caption>* Indicates required.</caption>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Name" placeholder="First name*"></th>                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Name2" placeholder="Last name*"></th>                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="email" name="Email" placeholder="Email*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Username" placeholder="Username*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="password" name="Password" placeholder="Password*"></th>
                        </tr>  
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Address" placeholder="Street Address*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="City" placeholder="City*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="State" placeholder="State*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Country" placeholder="Country*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Postcode" placeholder="Postcode*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="date" name="DOB" placeholder="Date of Birth: dd/mm/yy"></th>
                        </tr>
                        <tr>
                            <th><input type="checkbox" name="tosEmail" value="Yes"></th>
                            <th class="checktext">I would like to receive regular emails about newly added movies.</th>          
                        </tr>
                        <tr>
                            <th><input type="checkbox" name="tos" value="Agree to TOS"></th>
                            <th class="checktext">Agree to TOS</th> 
                        </tr>
                        <tr>
                            <th>
                                <input class="button" type="submit" value="Register"> 
                                
                            </th>
                        </tr>
                    </table>
            </form>  
    </body>
</html>
