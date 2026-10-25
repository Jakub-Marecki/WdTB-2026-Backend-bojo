package pl.wsb.bojo.customer.entity;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "customer")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "full_name", nullable = false, length = 80)
    private String fullName;

    @Column(
            name = "email",
            nullable = false,
            unique = true,
            length = 120
    )
    private String email;

    @Column(name = "phone", length = 20)
    private String phone;

    @Column(name = "registered_on", nullable = false)
    private LocalDate registeredOn;

    @Column(name = "active", nullable = false)
    private Boolean active;

    protected Customer() {
    }

    public Customer(
            String fullName,
            String email,
            String phone,
            LocalDate registeredOn,
            Boolean active
    ) {
        this.fullName = fullName; // Imie naziwsko
        this.email = email;
        this.phone = phone;
        this.registeredOn = registeredOn; // data rehestrachu
        this.active = active; // Aktywność konta
    }

    public Long getId() {
        return id;
    }

    public String getFullName() {
        return fullName;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public LocalDate getRegisteredOn() {
        return registeredOn;
    }

    public Boolean getActive() {
        return active;
    }
}