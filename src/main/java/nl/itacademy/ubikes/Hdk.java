package nl.itacademy.ubikes;

import javax.persistence.*;
import java.util.List;

import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "hdk")
public class Hdk {

    @Id
    @Column(name = "idHDK", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idHDK;

    @Column(name = "naam")
    private String naam;

    public Integer getIdHDK() {
        return this.idHDK;
    }

    public void setIdHDK(Integer idHDK) {
        this.idHDK = idHDK;
    }

    public String getNaam() {
        return this.naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

}