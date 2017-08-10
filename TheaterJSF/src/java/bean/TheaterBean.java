package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Showing;
import entity.Theater;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.context.FacesContext;

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
        //this.theater = theater;
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String,String> params = 
            fc.getExternalContext().getRequestParameterMap();
        Integer theaterid =  Integer.parseInt(params.get("theaterID"));
        this.theater = theaterEJB.findTheaterById(theaterid);
        
        return "TheaterMovieList.xhtml";
    }
    public List<Movie> getMoviesListForTheater(){
        return theaterEJB.findMoviesByTheater();
    }
    
    public List<Showing> getShowingsForAMovie(Movie movie)
    {
        return theaterEJB.findShowtimesForMovieByTheater(movie, theater);
    }
}
