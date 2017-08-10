/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Mark Butler
 */
@Entity
@Table(name = "SHOWING")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Showing.findAll", query = "SELECT s FROM Showing s")
    , @NamedQuery(name = "Showing.findById", query = "SELECT s FROM Showing s WHERE s.id = :id")
    , @NamedQuery(name = "Showing.findShowingsForMovieTheater", query = "SELECT s FROM Showing s WHERE s.movieid = :movieid AND s.theaterid = :theaterid")
    , @NamedQuery(name = "Showing.findByShowtime", query = "SELECT s FROM Showing s WHERE s.showtime = :showtime")})
public class Showing implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "SHOWTIME")
    @Temporal(TemporalType.TIME)
    private Date showtime;
    @JoinColumn(name = "MOVIEID", referencedColumnName = "ID")
    @ManyToOne
    private Movie movieid;
    @JoinColumn(name = "THEATERID", referencedColumnName = "ID")
    @ManyToOne
    private Theater theaterid;

    public Showing() {
    }

    public Showing(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getShowtime() {
        return showtime;
    }
    
    public String getFormattedShowtime() {
        //System.out.println("getFormattedShowtime() Called.");
        return new SimpleDateFormat("HH:mm").format(showtime);
    }

    public void setShowtime(Date showtime) {
        this.showtime = showtime;
    }

    public Movie getMovieid() {
        return movieid;
    }

    public void setMovieid(Movie movieid) {
        this.movieid = movieid;
    }

    public Theater getTheaterid() {
        return theaterid;
    }

    public void setTheaterid(Theater theaterid) {
        this.theaterid = theaterid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Showing)) {
            return false;
        }
        Showing other = (Showing) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Showing[ id=" + id + " ]";
    }
    
}
