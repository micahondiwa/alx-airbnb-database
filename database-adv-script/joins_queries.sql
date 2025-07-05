--A query using IINER JOIN to retrieve all bookings and the respective users who made those bookings
SELECT Booking.*, User.*
FROM Booking
INNER JOIN Users ON Booking.User_id = Users.User_id;

SELECT Property.*, Review.*
FROM Property
LEFT JOIN Review ON Property.Property_id = Review.Property_id
ORDER BY Property.property_id ASC;

SELECT Users.*, Booking.*
FROM Users
FULL OUTER JOIN Booking ON Users.User_id = Booking.User_id;
