
package ejb;

import entity.Movie;
import entity.Showing;
import entity.Theater;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Mark Butler
 */
@Stateless
public class TheaterEJB{

    @PersistenceContext(unitName = "TheaterJSFPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    public List<Theater> findAllTheaters(){
        return em.createNamedQuery("Theater.findAll", Theater.class).getResultList();
    }
    public List<Movie> findAllMovies(){
        return em.createNamedQuery("Movie.findAll", Movie.class).getResultList();
    }
    public List<Movie> findMoviesByTheater(){
        return em.createNamedQuery("Movie.findAll", Movie.class).getResultList();
    }
    
    public List<Showing> findShowtimesForMovieByTheater(Movie movie, Theater theater)
    {
        return em.createNamedQuery("Showing.findShowingsForMovieTheater", Showing.class)
                .setParameter("movieid", movie)
                .setParameter("theaterid", theater).getResultList();
    }
}
