# optimizating Complex Queries

```
-- Indexes on Booking Table
CREATE INDEX idx_booking_id on Booking(booking_id)
CREATE INDEX idx_booking_user_id on Booking(user_id)
CREATE INDEX idx_booking_property_id on Booking(property_id)
CREATE INDEX idx_booking_status on Booking(status)
CREATE INDEX idx_booking_start_date on Booking(start_date)
```

```
ELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,

    u.user_id,
    u.first_name,
    u;last_name,

    p.property_id,
    p.name AS property_name,

    pay.amount,
    pay.payment_date,

EXPLAIN
FROM Booking b
JOIN User u on b.user_id=user_id;
JOIN Property p ON b.property_id=p.property_id;
LEFT JOIN Payment pay ON b.booking_id=pay.booking_id;
```