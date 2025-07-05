SELECT Booking *, User *
FROM Booking
INNER JOIN User ON Booking.User_id=User.User_id


SELECT Property *, Review *,
FROM Property
LEFT JOIN Review ON Property.Property-d=Review.Property_id


SELECT *
FROM Booking
FULL OUTER JOIN User ON Booking.Booking_id=USER.User_id 