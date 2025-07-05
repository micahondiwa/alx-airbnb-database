SELECT User_id
COUNT(*) AS total_bookings
FROM Booking
GROUP By User_id;