--A query using IINER JOIN to retrieve all bookings and the respective users who made those bookings
SELECT 
    Booking.*, User.*
FROM 
    Booking
INNER JOIN 
    Users 
ON 
    Booking.User_id = Users.User_id;

-- A query using LEFT JOIN to retrieve all properties  and their reviews , including properties  that have no reviews
SELECT Property.*, Review.*
FROM Property
LEFT JOIN Review ON Property.Property_id = Review.Property_id
ORDER BY Property.property_id ASC;

-- A query using FULL OUTER JOIN to retrieve all users and bookings, even if user has no booking or a booking is not linked to a user.
SELECT Users.*, Booking.*
FROM Users
FULL OUTER JOIN Booking ON Users.User_id = Booking.User_id;
