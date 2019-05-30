<%-- 
    Document   : signup
    Created on : 17/04/2019, 4:16:38 PM
    Author     : Griffin
--%>

<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css "integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="isd1.css">

    </head>
    
          <% User user = (User) session.getAttribute("user"); 
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

  <!--TOP NAVIGATION BAR-->
    <header class="clearfix">
            <div class="navigation">
                <a href="index.jsp"><img src="source/logo.png" alt="OMS" class="title"></a>
                <nav>
                    <div class="navlist">
                        <ul>
                            <li><a href="index.jsp" title="Home" > Home </a></li>	
                            <li><a href="movies.jsp" title="Movies"> Movies </a></li>
                            <% if(userExists) {%>
                            <li><a href="logout.jsp" title="Logout"> Logout </a></li>
                            <li><a href="account.jsp" title="User Details"> User Details </a></li>
                            <%} else { %>
                            <li><a href="login.jsp" title="Login" id="active"> Login </a></li>
                            <li><a href="signup.jsp" title="Reigster"> Register </a></li>
                            <%} %>
                            <li><a href="cart.jsp" title="Cart"><i class="fas fa-shopping-cart"></i></a></li>
                            
                        </ul>
                    </div>
                </nav>
            </div>
    </header>



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
