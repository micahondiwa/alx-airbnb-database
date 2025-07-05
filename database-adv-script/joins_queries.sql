SELECT Booking *, User *
FROM Booking
INNER JOIN User ON Booking.UserID=User.UserID


SELECT Property *, Review *,
FROM Property
LEFT JOIN Review ON Property.PropertyID=Review.PropertyID


SELECT *
FROM Booking
FULL OUTER JOIN User ON Booking.BookingID=USER.UserID