/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Showing;
import entity.Theater;
import java.util.Date;
import java.util.Map;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;

/**
 *
 * @author Parth
 */
@Named(value = "checkOutBean")
@RequestScoped
public class CheckoutBean
{

    @EJB
    private TheaterEJB theaterEJB;
    private String creditcard;
    private int cvv;
    private Date expDate;
    private Movie movie;
    private Theater theater;
    private Showing showing;
    
    public String gotoCheckout()
    {
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String,String> params = 
            fc.getExternalContext().getRequestParameterMap();
        Integer showingid =  Integer.parseInt(params.get("showingID"));
        this.showing = theaterEJB.findShowingsById(showingid);
        
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

    public Showing getShowing()
    {
        return showing;
    }

    public void setShowing(Showing showing)
    {
        this.showing = showing;
    }
    
    
    
}
