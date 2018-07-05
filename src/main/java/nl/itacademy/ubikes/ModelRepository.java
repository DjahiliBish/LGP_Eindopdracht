package nl.itacademy.ubikes;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import java.util.Set;

public interface ModelRepository extends JpaRepository<Model, Integer> {

    public Set<Model> findModelByType(@Param("type") String type);

    public Set<Model> findModelByKleurCollectionNaam(@Param("kleur") String kleur);

    public Set<Model> findByMerk(@Param("merk") String merk);

    public Set<Model> findByPrijsIsLessThanEqual(@Param("prijs") Integer prijs);

    public Set<Model> findByPrijsIsGreaterThanEqual(@Param("prijs") Integer prijs);

    public Set<Model> findModelByFramehoogteCollectionHoogte(@Param("hoogte") Integer hoogte);

    public Set<Model> findModelByKinderzitjeTrue();

    public Set<Model> findModelByKinderzitjeFalse();

    public Set<Model> findModelByVersnellingEquals(@Param("versnellingen") Integer versnellingen);

    public Set<Model> findModelByRemsoort(@Param("remsoort") String remsoort);

    public Set<Model> findAllBy();

    public Set<Model> findModelByTypeAndPrijsLessThanEqual(@Param("type") String budget, @Param("prijs") Integer prijs);
}