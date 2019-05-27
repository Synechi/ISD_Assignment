<%@page import="Model.dao.*"%>
<%@page import="Controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Action</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
           DBManager manager = (DBManager)session.getAttribute("manager"); 
           User user = (User) session.getAttribute("user");

             String username = request.getParameter("userName");
            String email = request.getParameter("email");      
            System.out.println(email);
             System.out.println(username);
             System.out.println(user.getEmail());
             System.out.println(user.getUsername());
             
            boolean validEmail = true;
            boolean validUsername = true;
            System.out.println(validEmail);
             System.out.println(validUsername);
            if(!manager.checkUsername(username) && !username.equals(user.getUsername()))
            {validUsername = false;}
            if(!manager.checkEmail(email) && !email.equals(user.getEmail()))
            {validEmail = false;}
            System.out.println(validEmail);
             System.out.println(validUsername);
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String postcode = request.getParameter("postcode");
        String dob = request.getParameter("dob");
        int id = user.getID();
               
            
            if (validEmail && validUsername){
             
         manager.updateUser(id, name, email, username, password, address, city, state, country, postcode, dob); 
         user = manager.findUserID(id);
         session.setAttribute("user", user);
         session.setAttribute("existErr", "");
                response.sendRedirect("account.jsp"); 
            }                
                if (!validUsername && !validEmail){
                session.setAttribute("existErr", "Username and Email already in use");
                response.sendRedirect("account.jsp");     
                return;
            }  
                 
             if (!validUsername){
                session.setAttribute("existErr", "Username already in use");
                response.sendRedirect("account.jsp"); 
                return;
            }  
           
              if (!validEmail){
                session.setAttribute("existErr", "Email already in use");
                response.sendRedirect("account.jsp");  
                return;
            }  
            


        %>
        
    </body>
</html>