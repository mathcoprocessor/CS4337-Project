package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Theater;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Mark Butler
 */
@Named(value = "mainPageBean")
@SessionScoped
public class MainPageBean implements Serializable{

    @EJB
    private TheaterEJB theaterEJB;
    private List<Theater> theaters;

    public MainPageBean() {
    }
    private List<Theater> getTheatersList(){
        return theaterEJB.findAllTheaters();
    }
    public List<Movie> getMoviesList(){
        return theaterEJB.findAllMovies();
    }
    
    @PostConstruct
    public void init()
    {
        theaters=getTheatersList();
    }

    public List<Theater> getTheaters()
    {
        return theaters;
    }

    public void setTheaters(List<Theater> theaters)
    {
        this.theaters = theaters;
    }
    
    
}
