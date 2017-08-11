package bean;

import ejb.TheaterEJB;
import entity.Movie;
import entity.Showing;
import entity.Theater;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author Mark Butler
 */
@Named(value = "theaterBean")
@SessionScoped
public class TheaterBean implements Serializable{

    @EJB
    private TheaterEJB theaterEJB;
    private Theater theater;
    private List<Movie> movies;
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
        
        Collection<Showing> tempshowing = theater.getShowingCollection();
        movies = new ArrayList<>();
        for(Showing show: tempshowing)
        {
            if(!movies.contains(show.getMovieid()))
            {
                movies.add(show.getMovieid());
            }
        }
        
        return "TheaterMovieList.xhtml";
    }
    private List<Movie> getMoviesListForTheater(){
        return theaterEJB.findMoviesByTheater();
    }
    
    public List<Showing> getShowingsForAMovie(Movie movie)
    {
        return movie.getShowingsWithTheaterId(theater.getId());
    }

    public List<Movie> getMovies()
    {
        return movies;
    }

    public void setMovies(List<Movie> movies)
    {
        this.movies = movies;
    }
    
    
}
