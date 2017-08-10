package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Showing;
import entity.Theater;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author Mark Butler
 */
@Named(value = "theaterBean")
@RequestScoped
public class TheaterBean {

    @EJB
    private TheaterEJB theaterEJB;
    private Theater theater;
    public TheaterBean() {
    }
    public Theater getTheater() {
        return theater;
    }
    public void setTheater(Theater theater) {
        this.theater = theater;
    }
    public String showTheater(Theater theater){
        this.theater = theater;
        return "TheaterMovieList.xhtml";
    }
    public List<Movie> getMoviesListForTheater(){
        return theaterEJB.findMoviesByTheater();
    }
    
    public List<Showing> getShowingsForAMovie(Movie movie, Theater theater)
    {
        return theaterEJB.findShowtimesForMovieByTheater(movie, theater);
    }
}
