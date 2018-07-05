package nl.itacademy.ubikes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "framehoogte")
public class Framehoogte {

    @Id
    @Column(name = "idframehoogte", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idframehoogte;

    @Column(name = "hoogte", nullable = false)
    private int hoogte;


    //Getters and Setters

    public Integer getIdframehoogte() {
        return this.idframehoogte;
    }

    public void setIdframehoogte(Integer idframehoogte) {
        this.idframehoogte = idframehoogte;
    }

    public int getHoogte() {
        return this.hoogte;
    }

    public void setHoogte(int hoogte) {
        this.hoogte = hoogte;
    }

}