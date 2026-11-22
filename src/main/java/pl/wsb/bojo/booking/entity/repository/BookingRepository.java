package pl.wsb.bojo.booking.entity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.wsb.bojo.booking.entity.Booking;

import java.util.List;

public interface BookingRepository extends JpaRepository<Booking, Long> {

    List<Booking> findByFacility_Name(String name);

    List<Booking> findByCustomer_Email(String email);

    @Query("SELECT b FROM Booking b JOIN b.facility f WHERE f.name = :facilityName")
    List<Booking> findBookingsByFacilityName(@Param("facilityName") String facilityName);
}