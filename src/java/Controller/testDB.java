/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

/**
 *
 * @author Ben
 */

import Model.dao.DBManager;
import Model.dao.DBConnector;
import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.logging.*;
public class testDB {

    private static Scanner in = new Scanner(System.in);
    
    public static void main(String[] args) throws ParseException {
        try {
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            
            int key = (new Random()).nextInt(999999);
            int num = 1;
              
            
            System.out.print("email: ");
            String email = in.nextLine();
            System.out.print(" name: ");
            String name = in.nextLine();
            System.out.print("username: ");
            String username = in.nextLine();
            System.out.print("adddress: ");
            String address = in.nextLine();
            System.out.print("city: ");
            String city = in.nextLine();
            System.out.print("state");
            String state = in.nextLine();
            System.out.print("country");
            String country = in.nextLine();
            System.out.print("postcode");
            String postcode = in.nextLine();
            System.out.print("password");
            String password = in.nextLine();
            System.out.print("dob");
            String dob = in.nextLine();
            SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
java.util.Date date = format.parse(dob);
java.sql.Date sqlDate = new java.sql.Date(date.getTime());
             
            System.out.print("Student favorite color: ");
            String favcol = in.nextLine();
            db.addUser(key, name, email, username, password, address, city, state, country, postcode, sqlDate, 1); //This method must be completed in DBManager class
            System.out.println("Student is added to the database.");
            connector.closeConnection(); //Professional practice is to close connection to database once operations are finalized
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(testDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}


