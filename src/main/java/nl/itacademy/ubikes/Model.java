package nl.itacademy.ubikes;

import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "model")
public class Model {

    @Id
    @Column(name = "idmodel", nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idmodel;

    @Column(name = "merk")
    private String merk;

    @Column(name = "naam")
    private String naam;

    @Column(name = "type", nullable = false)
    private String type;

    @Column(name = "prijs", nullable = false)
    private int prijs;

    @Column(name = "versnelling", nullable = false)
    private int versnelling;

    @Column(name = "remsoort", nullable = false)
    private String remsoort;

    @Column(name = "kinderzitje", nullable = false)
    private boolean kinderzitje;

    @ManyToMany
    @JoinTable(name = "model_has_kleur",
            joinColumns = @JoinColumn(name = "model_idmodel"),
            inverseJoinColumns = @JoinColumn(name = "kleur_idkleur")
    )
    private List<Kleur> kleurCollection;

    @ManyToMany
    @JoinTable(name = "model_has_hdk",
            joinColumns = @JoinColumn(name = "model_idmodel"),
            inverseJoinColumns = @JoinColumn(name = "hdk_idHDK")
    )
    private List<Hdk> hdkCollection;

    @ManyToMany
    @JoinTable(name = "model_has_framehoogte",
            joinColumns = @JoinColumn (name = "model_idmodel"),
            inverseJoinColumns = @JoinColumn(name = "framehoogte_idframehoogte")
    )
    private List<Framehoogte> framehoogteCollection;

    //Getters and Setters

    public Integer getIdmodel() {
        return this.idmodel;
    }

    public void setIdmodel(Integer idmodel) {
        this.idmodel = idmodel;
    }

    public String getNaam() {
        return this.naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPrijs() {
        return this.prijs;
    }

    public void setPrijs(int prijs) {
        this.prijs = prijs;
    }

    public int getVersnelling() {
        return this.versnelling;
    }

    public void setVersnelling(int versnelling) {
        this.versnelling = versnelling;
    }

    public String getRemsoort() {
        return this.remsoort;
    }

    public void setRemsoort(String remsoort) {
        this.remsoort = remsoort;
    }

    public boolean isKinderzitje() {
        return this.kinderzitje;
    }

    public void setKinderzitje(boolean kinderzitje) {
        this.kinderzitje = kinderzitje;
    }

    public String getMerk() {
        return this.merk;
    }

    public void setMerk(String merk) {
        this.merk = merk;
    }

    public List<Kleur> getKleurCollection() {
        return this.kleurCollection;
    }

    public void setKleurCollection(List<Kleur> kleurCollection) {
        this.kleurCollection = kleurCollection;
    }

    public List<Hdk> getHdkCollection() {
        return this.hdkCollection;
    }

    public void setHdkCollection(List<Hdk> hdkCollection) {
        this.hdkCollection = hdkCollection;
    }

    public List<Framehoogte> getFramehoogteCollection() {
        return this.framehoogteCollection;
    }

    public void setFramehoogteCollection(List<Framehoogte> framehoogteCollection) {
        this.framehoogteCollection = framehoogteCollection;
    }

}