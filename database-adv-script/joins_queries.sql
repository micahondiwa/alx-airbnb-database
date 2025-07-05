SELECT * 
FROM BOOKING 
INNER JOIN USER| ON Booking.BookingID=User.UserID


SELECT * 
FROM Review
LEFT JOIN Property ON Review.ReviewID=Property.PropertyID


SELCT *
FROM Booking
FULL OUTER JOIN User ON Booking.BookingID=USER.UserID