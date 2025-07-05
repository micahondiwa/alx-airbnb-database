SELECT * 
FROM BOOKING 
INNER JOIN USER| ON Booking.BookingID=User.UserID


SELECT * 
FROM Property
LEFT JOIN Review ON Property.PropertyID=Review.ReviewID


SELCT *
FROM Booking
FULL OUTER JOIN User ON Booking.BookingID=USER.UserID