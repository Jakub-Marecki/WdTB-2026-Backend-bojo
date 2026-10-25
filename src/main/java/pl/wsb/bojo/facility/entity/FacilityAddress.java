package pl.wsb.bojo.facility.entity;

import jakarta.persistence.*;
//Przechowuje adres obiektu sportowego
@Embeddable //Nie tworzy osobnej tabeli. Jej pola staną się kolumnami w tabeli sports_facility
public class FacilityAddress {

    @Column(name = "street", length = 80)
    private String street;

    @Column(name = "city", length = 50)
    private String city;

    @Column(name = "postal_code", length = 6)
    private String postalCode;

    protected FacilityAddress() {
    }

    public FacilityAddress(
            String street,
            String city,
            String postalCode
    ) {
        this.street = street;
        this.city = city;
        this.postalCode = postalCode;
    }

    public String getStreet() {
        return street;
    }

    public String getCity() {
        return city;
    }

    public String getPostalCode() {
        return postalCode;
    }
}