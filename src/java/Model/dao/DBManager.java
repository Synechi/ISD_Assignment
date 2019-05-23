package Model.dao;

import Model.User;
import java.sql.*;

/**
 *
 * @author George
 */
public class DBManager {

    private Statement st;
    private PreparedStatement ps;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
        
    }

    //Find student by ID in the database
    public User findUser(String username, String password) throws SQLException {
        String fetch = "select * from ISD.Users where ID = '" + username + "' and password='" + password + "'";
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            String userName = rs.getString(4);
            String userPass = rs.getString(5);
            if (userName.equals(username) && userPass.equals(password)) {
                String userID = rs.getString(1);
                String name = rs.getString(2);
                String userEmail = rs.getString(3);
                String address = rs.getString(6);
                String userCity = rs.getString(7);
                String state = rs.getString(8);
                String country = rs.getString(9);
                String post = rs.getString(10);
                String userDOB = rs.getString(11);
                int acctype = rs.getInt(12);
                return new User(userID, name, userEmail, userName, userPass, address, userCity, state, country, post, userDOB, acctype);
            }
        }
        return null;
    }

    //Check if a student exist in the database
    public boolean checkUser(String username, String password) throws SQLException {
        String fetch = "select * from ISD.Users where username = '" + username + "' and password='" + password + "'";
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            String userName = rs.getString(4);
            String userPass = rs.getString(5);
            if (userName.equals(username) && userPass.equals(password)) {
                return true;
            }
        }
        return false;
    }

    //Add a student-data into the database
    public void addUser(int userID, String name, String userEmail, String userName, String userPass, String address, String userCity, String state, String country, String post, String userDOB, int acctype) throws SQLException {        
        st.executeUpdate("INSERT INTO OMSUSER.Users " + "VALUES (" + userID + ", '" + name + "', '" + userEmail + "', '" + userName + "', '" + userPass + "', '" + address + "', '" + userCity + "', '" + state + "', '" + country + "', '" + post + "', '" + userDOB + "', " + acctype + ")");
     
    
    }

    //update a student details in the database
    public void updateUser(String userID, String name, String userEmail, String userPass, String address, String userCity, String state, String country, String post, String userDOB, int acctype) throws SQLException {
        st.executeUpdate("UPDATE ISD.Users SET NAME='" + name + "',EMAIL='" + userEmail + "',PASSWORD='" + userPass + "',ADDRESS='" + address + "',CITY='" + userCity + "',STATE='" + state + "',COUNTRY='" + country + "',POST='" + post + "',DOB='" + userDOB + "' WHERE ID='" + userID + "'");
    }
    
    //delete a student from the database
    public void deleteUser(String ID) throws SQLException{
        st.executeUpdate("DELETE FROM ISD.Users WHERE ID='" + ID + "'");
    }
}