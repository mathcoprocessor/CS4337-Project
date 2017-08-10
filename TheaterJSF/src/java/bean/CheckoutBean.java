/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Movie;
import entity.Showing;
import entity.Theater;
import java.util.Date;
import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

/**
 *
 * @author Parth
 */
@Named(value = "checkOutBean")
@RequestScoped
public class CheckoutBean
{
    private String creditcard;
    private int cvv;
    private Date expDate;
    private Movie movie;
    private Theater theater;
    private Showing showing;
    
    public String gotoCheckout(Showing showing, Movie movie, Theater theater)
    {
        this.showing = showing;
        this.movie = movie;
        this.theater = theater;
        
        return "CheckoutMovie.xhtml";
    }

    public String getCreditcard()
    {
        return creditcard;
    }

    public void setCreditcard(String creditcard)
    {
        this.creditcard = creditcard;
    }

    public int getCvv()
    {
        return cvv;
    }

    public void setCvv(int cvv)
    {
        this.cvv = cvv;
    }

    public Date getExpDate()
    {
        return expDate;
    }

    public void setExpDate(Date expDate)
    {
        this.expDate = expDate;
    }

    public Movie getMovie()
    {
        return movie;
    }

    public void setMovie(Movie movie)
    {
        this.movie = movie;
    }

    public Theater getTheater()
    {
        return theater;
    }

    public void setTheater(Theater theater)
    {
        this.theater = theater;
    }
    
    
}