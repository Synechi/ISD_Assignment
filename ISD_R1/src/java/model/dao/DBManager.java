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
    public User findUserID(int ID) throws SQLException {
        String fetch = "select * from OMSUSER.Users where ID = " + ID + "";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            String userName = rs.getString(4);
            String userPass = rs.getString(5);
                int userID = rs.getInt(1);
                String name = rs.getString(2);
                String userEmail = rs.getString(3);
                String address = rs.getString(6);
                String userCity = rs.getString(7);
                String state = rs.getString(8);
                String country = rs.getString(9);
                String post = rs.getString(10);
                java.sql.Date dob = rs.getDate(11);
                int acctype = rs.getInt(12);
                return new User(userID, name, userEmail, userName, userPass, address, userCity, state, country, post, dob, acctype);
            
        }
        return null;
    }
    //Find student by ID in the database
    public User findUser(String username, String password) throws SQLException {
        String fetch = "select * from OMSUSER.Users where username = '" + username + "' and password='" + password + "'";
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            String userName = rs.getString(4);
            String userPass = rs.getString(5);
            if (userName.equals(username) && userPass.equals(password)) {
                int userID = rs.getInt(1);
                String name = rs.getString(2);
                String userEmail = rs.getString(3);
                String address = rs.getString(6);
                String userCity = rs.getString(7);
                String state = rs.getString(8);
                String country = rs.getString(9);
                String post = rs.getString(10);
                java.sql.Date dob = rs.getDate(11);
                int acctype = rs.getInt(12);
                return new User(userID, name, userEmail, userName, userPass, address, userCity, state, country, post, dob, acctype);
            }
        }
        return null;
    }

    //Check if a student exist in the database
    public boolean checkUser(String username, String password) throws SQLException {
        String fetch = "select * from OMSUSER.Users where username = '" + username + "' and password='" + password + "'";
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
    public boolean checkUsername(String username) throws SQLException {
        String fetch = "select * from OMSUSER.Users where username = '" + username + "'";
        ResultSet rs = st.executeQuery(fetch);

        if(rs.next() == false){
            return true;
            }
        
        return false;
    }
     public boolean checkEmail(String email) throws SQLException {
        String fetch = "select * from OMSUSER.Users where email = '" + email + "'";
        ResultSet rs = st.executeQuery(fetch);

        if(rs.next() == false){
            return true;
            
            }
        
        return false;
    }

    //Add a student-data into the database
    public void addUser(int userID, String name, String userEmail, String userName, String userPass, String address, String userCity, String state, String country, String post, java.sql.Date userDOB, int acctype) throws SQLException {        
        st.executeUpdate("INSERT INTO OMSUSER.Users " + "VALUES (" + userID + ", '" + name + "', '" + userEmail + "', '" + userName + "', '" + userPass + "', '" + address + "', '" + userCity + "', '" + state + "', '" + country + "', '" + post + "', '" + userDOB + "', " + acctype + ")");
     
    
    }

    //update a student details in the database
    public void updateUser(int userID, String name, String userEmail, String userName, String userPass, String address, String userCity, String state, String country, String post, java.sql.Date userDOB) throws SQLException {
        st.executeUpdate("UPDATE OMSUSER.Users SET NAME='" + name + "',EMAIL='" + userEmail + "',USERNAME='" + userName + "',PASSWORD='" + userPass + "',STREET_ADDRESS='" + address + "',CITY='" + userCity + "',STATE='" + state + "',COUNTRY='" + country + "',POSTCODE='" + post + "',DATE_OF_BIRTH='" + userDOB + "' WHERE ID=" + userID + "");
    }
    
    //delete a student from the database
    public void deleteUser(int ID) throws SQLException{
        st.executeUpdate("DELETE FROM OMSUSER.Users WHERE ID=" + ID + "");
    }
}