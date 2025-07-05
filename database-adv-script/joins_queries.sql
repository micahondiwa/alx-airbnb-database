SELECT Booking *, User *
FROM Booking
INNER JOIN User ON Booking.UserID=User.UserID


SELECT * 
FROM Property
LEFT JOIN Review 
ON Property.PropertyID=Review.ReviewID


SELECT *
FROM Booking
FULL OUTER JOIN User ON Booking.BookingID=USER.UserID