package entity;

import entity.Showing;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-08-10T18:11:26")
@StaticMetamodel(Theater.class)
public class Theater_ { 

    public static volatile SingularAttribute<Theater, Integer> zipcode;
    public static volatile SingularAttribute<Theater, String> name;
    public static volatile CollectionAttribute<Theater, Showing> showingCollection;
    public static volatile SingularAttribute<Theater, Integer> id;

}