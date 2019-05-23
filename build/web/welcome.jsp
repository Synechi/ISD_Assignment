<%-- 
    Document   : welcome
    Created on : 23/05/2019, 8:02:30 PM
    Author     : Ben
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="Model.User"%>
<%@page import="Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
       <%     
        
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        String address = request.getParameter("Address");
        String city = request.getParameter("City");
        String state = request.getParameter("State");
        String country = request.getParameter("Country");
        String postcode = request.getParameter("Postcode");
        String dob = request.getParameter("DOB");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date date = formatter.parse(dob);
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        
        
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;       
                              
        User user = new User(ID, name, email, username, password, address, city, state, country, postcode, dob, 1);
        session.setAttribute("user", user);
        DBManager manager = (DBManager)session.getAttribute("manager");
        //System.out.print(name + email + username + password + address + city + state + country + postcode + dob + date);
        manager.addUser(key, name, email, username, password, address, city, state, country, postcode, dob, 1);
        
                                 %>
    <body>
        
        <h1>Hello <%=name%> </h1>
      
    </body>
</html>
