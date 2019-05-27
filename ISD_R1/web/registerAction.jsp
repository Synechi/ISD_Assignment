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
            String username = request.getParameter("Username");
            String email = request.getParameter("Email");            
            boolean validEmail = manager.checkEmail(email);
            boolean validUsername = manager.checkUsername(username);
            String fName = request.getParameter("Name");
        String lName = request.getParameter("Name2");
        String name = fName + " " + lName;
        String password = request.getParameter("Password");
        String address = request.getParameter("Address");
        String city = request.getParameter("City");
        String state = request.getParameter("State");
        String country = request.getParameter("Country");
        String postcode = request.getParameter("Postcode");
        String dob = request.getParameter("DOB");
            
            if (validEmail && validUsername && request.getParameter("tos") != null){
                
         int key = (new Random()).nextInt(999999);       
         
        User user = new User(key, name, email, username, password, address, city, state, country, postcode, dob, 1);
        session.setAttribute("user", user);       
        manager.addUser(key, name, email, username, password, address, city, state, country, postcode, dob, 1);     
                response.sendRedirect("welcome.jsp"); 
            }
         
                 
                
                 if (request.getParameter("tos") == null)
            {
                session.setAttribute("existErr", "Must agree to TOS");
                response.sendRedirect("signup.jsp");      
                return;
            }
                if (!validUsername && !validEmail){
                session.setAttribute("existErr", "Username and Email already in use");
                response.sendRedirect("signup.jsp");     
                return;
            }  
                 
             if (!validUsername){
                session.setAttribute("existErr", "Username already in use");
                response.sendRedirect("signup.jsp"); 
                return;
            }  
           
              if (!validEmail){
                session.setAttribute("existErr", "Email already in use");
                response.sendRedirect("signup.jsp");  
                return;
            }  
            //if postcode > 4 if dob format


        %>
        
    </body>
</html>