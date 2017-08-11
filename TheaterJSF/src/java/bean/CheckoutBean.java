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
import java.io.Serializable;
import java.util.Date;
import java.util.Map;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;
import javax.inject.Named;

/**
 *
 * @author Parth
 */
@Named(value = "checkOutBean")
@SessionScoped
public class CheckoutBean implements Serializable
{

    @EJB
    private TheaterEJB theaterEJB;
    private String creditcard;
    private float cost =10f;
    private int cvv;
    private Date expDate;
    private Movie movie;
    private Theater theater;
    private Showing showing;
    private int quantity;
    
    public String gotoCheckout(Showing showing)
    {
        System.out.println("gotoCheckout() Called.");
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String,String> params = 
            fc.getExternalContext().getRequestParameterMap();
        Integer showingid =  Integer.parseInt(params.get("showingID"));
        this.showing = theaterEJB.findShowingsById(showingid);
        System.out.println("Showing ID selected: " + showingid);
        return "CheckoutMovie.xhtml";
    }
    

    public float getTaxAmount()
    {
        return getSubtotal() * 0.0825f;
    }
    public float getSubtotal()
    {
        return quantity * cost;
    }
    
    public float getTotal()
    {
        return getSubtotal() + getTaxAmount();
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

    public int getQuantity()
    {
        return quantity;
    }

    public void setQuantity(int quantity)
    {
        this.quantity = quantity;
    }

    public double getCost()
    {
        return cost;
    }

    public void setCost(float cost)
    {
        this.cost = cost;
    }
    
    
}
