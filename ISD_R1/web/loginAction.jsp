<%-- 
    Document   : loginAction
    Created on : 29/05/2019, 1:03:15 PM
    Author     : emily
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="Model.dao.DBManager"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action</title>
    </head>
    <body>
                <%
            
            DBManager manager = (DBManager)session.getAttribute("manager");
            String email = request.getParameter("Email");       
        String password = request.getParameter("Password");
        
        User user = manager.findUser(email, password);
        if (user == null) {
                session.setAttribute("existErr", "Either username and/or password is incorrect. Please try again.");
                response.sendRedirect("login.jsp");      
        }
        else {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
        String desc="";
         desc= user.getName() + " logged in at "+ String.valueOf(dtf.format(now));
            manager.addLog(desc, user.getID());
        session.setAttribute("user", user);           
                response.sendRedirect("welcome.jsp"); 
        }
        %>
    </body>
</html>
