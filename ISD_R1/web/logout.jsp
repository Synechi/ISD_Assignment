<%-- 
    Document   : logout
    Created on : 24/05/2019, 12:00:18 AM
    Author     : Ben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%           
            session.invalidate();
        %>
        You have been logged out.
        Click here to go to<a href="login.jsp" title="Login" id="active"> Login </a>page.
   
    </body>
</html>
