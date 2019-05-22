package Model.dao;

import Model.User;
import java.sql.*;

/**
 *
 * @author George
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    //Find student by ID in the database
    public User findStudent(String username, String password) throws SQLException {
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
    public boolean checkStudent(String ID, String password) throws SQLException {
        String fetch = "select * from ISDUSER.Students where ID = '" + ID + "' and password='" + password + "'";
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            String userID = rs.getString(1);
            String userPass = rs.getString(4);
            if (userID.equals(ID) && userPass.equals(password)) {
                return true;
            }
        }
        return false;
    }

    //Add a student-data into the database
    public void addStudent(String userID, String name, String userEmail, String userName, String userPass, String address, String userCity, String state, String country, String post, String userDOB, int acctype) throws SQLException {        
        st.executeUpdate("INSERT INTO ISD.Users " + "VALUES ('" + userID + "', '" + name + "', '" + userEmail + "', '" + userName + "', '" + userPass + "', '" + address + "', '" + userCity + "', '" + state + "', '" + country + "', '" + post + "', '" + userDOB + "', '" + acctype + "')");
    }

    //update a student details in the database
    public void updateStudent(String ID, String email, String name, String password, String dob, String favcol) throws SQLException {
        st.executeUpdate("UPDATE ISDUSER.Students SET EMAIL='" + email + "',NAME='" + name + "',PASSWORD='" + password + "',dob='" + dob + "',FAVORITECOLOR='" + favcol + "' WHERE ID='" + ID + "'");
    }
    
    //delete a student from the database
    public void deleteStudent(String ID) throws SQLException{
        st.executeUpdate("DELETE FROM ISDUSER.Students WHERE ID='" + ID + "'");
    }
}