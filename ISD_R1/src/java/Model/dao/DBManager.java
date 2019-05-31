package Model.dao;

import java.util.ArrayList;
import java.sql.Date;
import Model.*;
import java.sql.*;
import java.util.Random;

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
    public User findUser(String email, String password) throws SQLException {
        String fetch = "select * from OMSUSER.Users where email = '" + email + "' and password='" + password + "'";
        ResultSet rs = st.executeQuery(fetch);

        while (rs.next()) {
            String userEmail = rs.getString(3);
            String userPass = rs.getString(5);
            if (userEmail.equals(email) && userPass.equals(password)) {
                int userID = rs.getInt(1);
                String name = rs.getString(2);
                String user = rs.getString(4);
                String address = rs.getString(6);
                String userCity = rs.getString(7);
                String state = rs.getString(8);
                String country = rs.getString(9);
                String post = rs.getString(10);
                java.sql.Date dob = rs.getDate(11);
                int acctype = rs.getInt(12);
                return new User(userID, name, userEmail, user, userPass, address, userCity, state, country, post, dob, acctype);
            }
        }
        return null;
    }
    
    public ArrayList<Movie> getMovies() throws SQLException {
        String fetch = "select * from OMSUSER.Movies";
        ResultSet rs = st.executeQuery(fetch);
        ArrayList<Movie> movieList = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt(1);
            String title = rs.getString(2);
            java.sql.Date relYr = rs.getDate(3);
            String genre = rs.getString(4);
            double price = rs.getDouble(5);
            int stock = rs.getInt(6);
            boolean status = rs.getBoolean(7);
            Movie movie = new Movie(id, title, relYr, genre, price, stock, status);
            movieList.add(movie);
        }
        return movieList;
    }
    
    public ArrayList<Movie> searchMovies(String search) throws SQLException {
        String fetch = "select * from OMSUSER.Movies where lower(title) LIKE lower('%"+search+"%') or lower(genre) LIKE lower('%"+search+"%')";
        ResultSet rs = st.executeQuery(fetch);
        ArrayList<Movie> movieList = new ArrayList<>();
        if (search.equals("")) {
            return getMovies();
        }
        while (rs.next()) {
            int id = rs.getInt(1);
            String title = rs.getString(2);
            java.sql.Date relYr = rs.getDate(3);
            String genre = rs.getString(4);
            double price = rs.getDouble(5);
            int stock = rs.getInt(6);
            boolean status = rs.getBoolean(7);
            Movie movie = new Movie(id, title, relYr, genre, price, stock, status);
            movieList.add(movie);
        }
        return movieList;
    }
    
       public ArrayList<Log> searchLogs(int userID) throws SQLException {
        String fetch = "select * from OMSUSER.Logs where userid =" +userID + "";
        ResultSet rs = st.executeQuery(fetch);
        ArrayList<Log> logList = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt(1);
            String desc = rs.getString(2);
            int userid = rs.getInt(3);
            Log log = new Log(id, desc, userid);
                        logList.add(log);
        }
        return logList;
    }
    
    public Movie findMovie(int search) throws SQLException {
        String fetch = "select * FROM OMSUSER.Movies where id ="+search+"";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            int id = rs.getInt(1);
            String title = rs.getString(2);
            java.sql.Date relYr = rs.getDate(3);
            String genre = rs.getString(4);
            double price = rs.getDouble(5);
            int stock = rs.getInt(6);
            boolean status = rs.getBoolean(7);
            Movie movie = new Movie(id, title, relYr, genre, price, stock, status);
            return movie;
        }
        return null;
    }
    
    public void rmvMovie(int search) throws SQLException {
        st.executeUpdate("DELETE FROM OMSUSER.Movies WHERE id=" + search + "");
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
     
    public boolean checkMovie(String title) throws SQLException {
        String fetch = "select * from OMSUSER.Movies where title = '" + title + "'";
        ResultSet rs = st.executeQuery(fetch);
        
        if(rs.next() == false) {
            return true;
        }
        return false;
    }

    //Add a student-data into the database
    public void addUser(int userID, String name, String userEmail, String userName, String userPass, String address, String userCity, String state, String country, String post, java.sql.Date userDOB, int acctype) throws SQLException {        
        st.executeUpdate("INSERT INTO OMSUSER.Users " + "VALUES (" + userID + ", '" + name + "', '" + userEmail + "', '" + userName + "', '" + userPass + "', '" + address + "', '" + userCity + "', '" + state + "', '" + country + "', '" + post + "', '" + userDOB + "', " + acctype + ")");
    }
    
    public void addMovie(int id, String title, java.sql.Date relYr, String genre, double price , int stock, boolean status) throws SQLException {
        st.executeUpdate("INSERT INTO OMSUSER.Movies VALUES("+id+", '"+title+"', '"+relYr+"', '"+genre+"', "+price+", "+stock+", "+status+")");
    }
    
        public void addLog(String description, int userid) throws SQLException {
           Random rand=new Random();
            int id = rand.nextInt(99999);
        st.executeUpdate("INSERT INTO OMSUSER.Logs VALUES("+id+", '"+description+"', "+userid+")");
    }

    //update a student details in the database
    public void updateUser(int userID, String name, String userEmail, String userName, String userPass, String address, String userCity, String state, String country, String post, java.sql.Date userDOB) throws SQLException {
        st.executeUpdate("UPDATE OMSUSER.Users SET NAME='" + name + "',EMAIL='" + userEmail + "',USERNAME='" + userName + "',PASSWORD='" + userPass + "',STREET_ADDRESS='" + address + "',CITY='" + userCity + "',STATE='" + state + "',COUNTRY='" + country + "',POSTCODE='" + post + "',DATE_OF_BIRTH='" + userDOB + "' WHERE ID=" + userID + "");
    }
    
    //delete a student from the database
    public void deleteUser(int ID) throws SQLException{
        st.executeUpdate("DELETE FROM OMSUSER.Users WHERE ID=" + ID + "");
    }
    
        public void deleteLogs(int userID) throws SQLException{
        st.executeUpdate("DELETE FROM OMSUSER.Logs WHERE userid=" + userID + "");
    }
    
    public void updateMovie (int id, String title, java.sql.Date relYr, String genre, double price , int stock, boolean status) throws SQLException {
        st.executeUpdate("UPDATE OMSUSER.Movies SET title='" + title + "',releaseyear='" + relYr + "',genre='" + genre + "',price=" + price + ",stock=" + stock + ",status=" + status + " WHERE id=" + id + "");
    }
    
    public int getMovieID(String title) throws SQLException {
        String fetch = "select * FROM OMSUSER.Movies where title ="+title+"";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            return rs.getInt(1);
        }
        return 0;
    }
}