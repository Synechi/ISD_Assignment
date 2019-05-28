/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import java.sql.Date;

/**
 *
 * @author Evan
 */
public class Movie {
    private int ID;
    private String title;
    private java.sql.Date releaseyr;
    private String genre;
    private double price;
    private int stock;
    private boolean status;
    
    public Movie(int ID, String title, Date releaseyr, String genre, double price, int stock, boolean status) {
        this.ID = ID;
        this.title = title;
        this.releaseyr = releaseyr;
        this.genre = genre;
        this.price = price;
        this.stock = stock;
        this.status = status;
    }
    
    

    public int getID() {
        return ID;
    }

    public String getTitle() {
        return title;
    }

    public Date getReleaseyr() {
        return releaseyr;
    }

    public String getGenre() {
        return genre;
    }

    public double getPrice() {
        return price;
    }
    
    public String getFormPrice() {
        return String.format("%.2f", getPrice());
    }

    public int getStock() {
        return stock;
    }

    public boolean isStatus() {
        return status;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setReleaseyr(Date releaseyr) {
        this.releaseyr = releaseyr;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
