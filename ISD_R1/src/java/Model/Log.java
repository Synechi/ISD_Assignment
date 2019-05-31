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
            
             public Log(int ID, String description, int userID) {
        this.ID = ID;
        this.description = description;
        this.userID = userID;
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