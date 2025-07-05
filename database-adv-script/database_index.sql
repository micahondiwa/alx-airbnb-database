
EXPLAIN ANALYZE 
SELECT *
FROM User
WHERE user_id =123;


-- Index on User Table
CREATE INDEX idx_user_id ON User(user_id)
CREATE INDEX idx_email ON User(email)

EXPLAIN ANALYZE 
SELECT *
FROM Booking
WHERE user_id =123;

-- Indexes on Booking Table
CREATE INDEX idx_booking_id on Booking(booking_id)
CREATE INDEX idx_booking_user_id on Booking(user_id)
CREATE INDEX idx_booking_property_id on Booking(property_id)
CREATE INDEX idx_booking_status on Booking(status)
CREATE INDEX idx_booking_start_date on Booking(start_date)

-- Index on Property Table
CREATE INDEX idx_property_id on Property(property_id)
CREATE INDEX idx_property_host_id on Property(host_id)

EXPLAIN ANALYZE 
SELECT *
FROM Booking
WHERE user_id =123;