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
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="ISD CSS.css">
        <title>Register</title>
        <link rel="stylesheet" href="isd1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                            <li><a href="login.jsp" title="Login"> Login </a></li>
                            <li><a href="signup.jsp" title="Reigster" id="active"> Register </a></li>
                            <%} %>
                            <li><a href="cart.jsp" title="Cart"><i class="fas fa-shopping-cart"></i></a></li>
                            
                        </ul>
                    </div>
                </nav>
            </div>
    </header>
       
    <body>  
        <center><h2>Register</h2></center>
            <form action="registerAction.jsp" method="post">
                    <table class="signuptable" style="width:50%">
                        <caption>* Indicates required.</caption>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Name" size="20" <% if (request.getParameter("Name") != null) { %> value="<%= request.getParameter("Name") %>" <% } %> placeholder="First name*"></th>                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Name2" size="20" required placeholder="Last name*"></th>                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="email" name="Email" size="50" required placeholder="Email*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Username" size="50" required placeholder="Username*"></th>
                           
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="password" name="Password" size="50" required placeholder="Password*"></th>
                        </tr>  
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Address" maxlength="100" required placeholder="Street Address*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="City" maxlength="50" required placeholder="City*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="State" maxlength="50" required placeholder="State*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Country" maxlength="50" required placeholder="Country*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="text" name="Postcode" maxlength="4" required placeholder="Postcode: 0000*"></th>
                        </tr>
                        <tr>
                            <th class="field" colspan="2"><input type="date" name="DOB" maxlength="10" required placeholder="DOB: dd/mm/yyyy"></th>
                        </tr>
                        
                        <tr>
                            <th><input type="checkbox" name="tos" value="Agree to TOS"></th>
                            <th class="checktext">Agree to TOS</th> 
                        </tr>
                        <tr>
                            <th>                                
                                <input class="button" type="submit" value="Register" name="submit" >                                 
                            </th>
                            <th><p style="color: red;"><c:if test="${existErr!=null}"><c:out value="${existErr}"/></c:if></p></th>
                        </tr>
                    </table>
            </form>  
        
        ${existErr = null}
    </body>    
</html>
