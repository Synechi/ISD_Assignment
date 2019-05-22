<%-- 
    Document   : signup
    Created on : 17/04/2019, 4:16:38 PM
    Author     : Griffin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="ISD CSS.css">
        <title>TBD Sign Up</title>
        <link rel="stylesheet" href="isd1.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    
    <body>
          <!--TOP NAVIGATION BAR-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

    <a class="navbar-brand" href="#">TBD Movie Store</a>
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
            <a class="nav-link" href="signup.jsp">SIGN UP</a>
          </li>
        </div>

        </ul>
        </div>
    </nav>
        
        
        <h1 class="signuptitle">REGISTER</h1>
            <form action="welcome.jsp">
                    <table class="signuptable" style="width:50%">
                        <caption>* Indicates required.</caption>
                        <tr>
                            <th class="field" colspan="2"><input type="name" name="Name" placeholder="First name*"></th>                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="name" name="Name" placeholder="Last name*"></th>                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="email" name="Email" placeholder="Email*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="password" name="Password" placeholder="Password*"></th>
                        </tr>                       
                        <tr>
                            <th><input type="checkbox" name="tos" value="Yes"></th>
                            <th class="checktext">I would like to receive regular emails about newly added movies.</th>          
                        </tr>
                        <tr>
                            <th><input type="checkbox" name="tos" value="Agree to TOS"></th>
                            <th class="checktext">Agree to TOS</th> 
                        </tr>
                        <tr>
                            <th>
                            <button type="register" onclick="alert('One Moment')">Create My Account</button>                           
                            </th>
                        </tr>
                    </table>
            </form>  
    </body>
</html>
