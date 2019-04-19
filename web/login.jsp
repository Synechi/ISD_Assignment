<%-- 
    Document   : signup
    Created on : 17/04/2019, 4:16:38 PM
    Author     : Griffin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="isd1.css">

    </head>
    
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
                                        <a class="nav-link" href="movies.html">MOVIES</a>
                                    </li>
                                </div>
                                <div class="col-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.html">ABOUT</a>
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


        
        
  <center><h2>LOGIN</h2></center>
            <form action="index.jsp">
                    <table class="signuptable" style="width:50%">
                        <caption>* Indicates required.</caption>
                        <tr>
                            <th class="field" colspan="2"><input type="email" name="Email" placeholder="Email*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="password" name="Password" placeholder="Password*"></th>
                        </tr>                       
                        <tr>
                            <th><input type="checkbox" name="tos" value="Yes"></th>
                            <th class="checktext">Would you like to save login details</th>          
                        </tr>
                        <tr>
                            <th>
                        <button type="login" onclick="alert('One Moment')">Login to my Account</button>                           
                                </th>
                        </tr>
                    </table>
            </form>  
    </body>
</html>
