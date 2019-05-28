<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
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
        boolean validPost;
        try {Integer.parseInt(postcode);
        validPost = true;
        } catch (NumberFormatException e) {
            validPost = false;
        }
        //boolean validDob;
         SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
       /* try { format.setLenient(false);
        java.util.Date date = format.parse(dob);
        validDob = true;
        }
        catch (ParseException e) {
            validDob = false;
        }
               */
            
            
            
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
             if (!validPost || postcode.length() != 4) 
             { session.setAttribute("existErr", "Postcode must be 4 digits");
                response.sendRedirect("account.jsp");  
                return;}
          /*   if(!validDob)
             { session.setAttribute("existErr", "Date must be in format: dd/mm/yyyy");
                response.sendRedirect("account.jsp");  
                return;}*/
              
             else {
             java.util.Date date = format.parse(dob);
         java.sql.Date sqlDate = new java.sql.Date(date.getTime());
         manager.updateUser(id, name, email, username, password, address, city, state, country, postcode, sqlDate); 
         user = manager.findUserID(id);
         session.setAttribute("user", user);
         session.setAttribute("existErr", "");
                response.sendRedirect("account.jsp"); }
            


        %>
        
    </body>
</html>