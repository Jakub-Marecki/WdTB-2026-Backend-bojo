package pl.wsb.bojo.facility.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "amenity")
public class Amenity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, unique = true, length = 80)
    private String name;

    @Column(name = "description", nullable = false, length = 200)
    private String description;

    @Column(name = "category", nullable = false, length = 50)
    private String category;

    @Column(name = "extra_fee", nullable = false, precision = 10, scale = 2)
    private BigDecimal extraFee;

    @Column(name = "active", nullable = false)
    private Boolean active;

    protected Amenity() {
    }

    public Amenity(
            String name,
            String description,
            String category,
            BigDecimal extraFee,
            Boolean active
    ) {
        this.name = name;
        this.description = description;
        this.category = category;
        this.extraFee = extraFee;
        this.active = active;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getCategory() {
        return category;
    }

    public BigDecimal getExtraFee() {
        return extraFee;
    }

    public Boolean getActive() {
        return active;
    }
}