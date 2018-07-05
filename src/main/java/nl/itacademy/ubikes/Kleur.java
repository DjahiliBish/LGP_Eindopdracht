package nl.itacademy.ubikes;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "kleur")
public class Kleur {

    @Column(name = "idkleur", nullable = false)
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idkleur;

    @Column(name = "naam", nullable = false)
    @Basic(optional = false)
    private String naam;

    public Integer getIdkleur() {
        return this.idkleur;
    }

    public void setIdkleur(Integer idkleur) {
        this.idkleur = idkleur;
    }

    public String getNaam() {
        return this.naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }
}