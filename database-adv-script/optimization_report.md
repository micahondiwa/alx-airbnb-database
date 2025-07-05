# optimizating Complex Queries

```
-- Indexes on Booking Table
CREATE INDEX idx_booking_id on Booking(booking_id)
CREATE INDEX idx_booking_user_id on Booking(user_id)
CREATE INDEX idx_booking_property_id on Booking(property_id)
CREATE INDEX idx_booking_status on Booking(status)
CREATE INDEX idx_booking_start_date on Booking(start_date)
```
