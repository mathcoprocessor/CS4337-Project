package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Theater;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author Mark Butler
 */
@Named(value = "mainPageBean")
@RequestScoped
public class MainPageBean {

    @EJB
    private TheaterEJB theaterEJB;

    public MainPageBean() {
    }
    public List<Theater> getTheatersList(){
        return theaterEJB.findAllTheaters();
    }
    public List<Movie> getMoviesList(){
        return theaterEJB.findAllMovies();
    }
}
