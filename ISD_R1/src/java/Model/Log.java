/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author emily
 */
public class Log {
     private int ID;
    private String description;
            private int userID;
            private java.sql.Date date;
            
             public Log(int ID, String description, int userID, java.sql.Date date) {
        this.ID = ID;
        this.description = description;
        this.userID = userID;
        this.date = date;
}

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
    
    public void setDate(java.sql.Date date) {
        this.date = date;
    }

    public java.sql.Date getDate() {
        return date;
    }
    public int getID() {
        return ID;
    }

    public String getDescription() {
        return description;
    }

    public int getUserID() {
        return userID;
    }
}