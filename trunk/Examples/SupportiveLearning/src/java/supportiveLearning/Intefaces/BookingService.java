package supportiveLearning.Intefaces;

import supportiveLearning.dto.Hotel;
import supportiveLearning.dto.Booking;
import java.util.List;

/**
 * A service interface for retrieving hotels and bookings from a backing repository. Also supports the ability to cancel
 * a booking.
 */
public interface BookingService {

    /**
     * Find bookings made by the given user
     * @param username the user's name
     * @return their bookings
     */
    public List<Booking> findBookings(String username);

    /**
     * Find hotels available for booking by some criteria.
     * @param criteria the search criteria
     * @param firstResult the index of the first result to return
     * @param sortBy the field to sort by
     * @param ascending true if the sorting should be in ascending order, false for descending
     * @return a list of hotels meeting the criteria
     */
    public List<Hotel> findHotels();

    /**
     * Find hotels by their identifier.
     * @param id the hotel id
     * @return the hotel
     */
    public Hotel findHotelById(Long id);

    /**
     * Create a new, transient hotel booking instance for the given user.
     * @param hotelId the hotelId
     * @param userName the user name
     * @return the new transient booking instance
     */
    public Booking createBooking(Long hotelId, String userName);

    /**
     * Cancel an existing booking.
     * @param id the booking id
     */
    public void cancelBooking(Booking booking);

    /**
     * Return the total number of hotels for the given criteria.
     * @param criteria the criteria to use
     * @return the number of matching hotels
     */

}
