-- A query to find the total number of bookings made by each user, using COUNT function and GROUP BY clause
SELECT User_id
COUNT(*) AS total_bookings
FROM Booking
GROUP BY User_id;

-- Using a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.
