package pl.wsb.bojo.booking.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "booking")
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "customer_name", nullable = false, length = 80)
    private String customerName;

    @Column(name = "start_at", nullable = false)
    private LocalDateTime startAt;

    @Column(name = "end_at", nullable = false)
    private LocalDateTime endAt;

    @Column(
            name = "total_price",
            nullable = false,
            precision = 10,
            scale = 2
    )
    private BigDecimal totalPrice;

    @Column(name = "confirmed", nullable = false)
    private Boolean confirmed;

    protected Booking() {
    }

    public Booking(
            String customerName,
            LocalDateTime startAt,
            LocalDateTime endAt,
            BigDecimal totalPrice,
            Boolean confirmed
    ) {
        this.customerName = customerName; // Imię i nazwisko klienta
        this.startAt = startAt; // Początek rezerwacji
        this.endAt = endAt; // Koniec rezerwacji
        this.totalPrice = totalPrice; // Koszt rezerwacji
        this.confirmed = confirmed; //Czy rezerwacja jest potwierdzona
    }

    public Long getId() {
        return id;
    }

    public String getCustomerName() {
        return customerName;
    }

    public LocalDateTime getStartAt() {
        return startAt;
    }

    public LocalDateTime getEndAt() {
        return endAt;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public Boolean getConfirmed() {
        return confirmed;
    }
}