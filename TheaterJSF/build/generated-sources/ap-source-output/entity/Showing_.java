package entity;

import entity.Movie;
import entity.Theater;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-10T19:43:20")
@StaticMetamodel(Showing.class)
public class Showing_ { 

    public static volatile SingularAttribute<Showing, Date> showtime;
    public static volatile SingularAttribute<Showing, Theater> theaterid;
    public static volatile SingularAttribute<Showing, Movie> movieid;
    public static volatile SingularAttribute<Showing, Integer> id;

}