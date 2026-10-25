package pl.wsb.bojo.facility.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "sports_facility")
public class SportsFacility {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false, length = 80)
    private String name;

    @Enumerated(EnumType.STRING)
    @Column(name = "facility_type", nullable = false, length = 20)
    private FacilityType facilityType;

    @Column(
            name = "hourly_rate",
            nullable = false,
            precision = 10,
            scale = 2
    )
    private BigDecimal hourlyRate;

    @Column(name = "active", nullable = false)
    private Boolean active;

    @Embedded
    private FacilityAddress address;

    protected SportsFacility() {
    }

    public SportsFacility(
            String name,
            FacilityType facilityType,
            BigDecimal hourlyRate,
            Boolean active,
            FacilityAddress address
    ) {
        this.name = name; // Nazwa boiska lub sali
        this.facilityType = facilityType; // Boisko lub hala
        this.hourlyRate = hourlyRate; // Cena za godzinę
        this.active = active; // czy obiekt jest dostępny
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public FacilityType getFacilityType() {
        return facilityType;
    }

    public BigDecimal getHourlyRate() {
        return hourlyRate;
    }

    public Boolean getActive() {
        return active;
    }

    public FacilityAddress getAddress() {
        return address;
    }
}