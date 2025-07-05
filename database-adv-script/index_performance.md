# Indexes for Optimization

1. **High-Usage Columns**

- **User Table** - The columns that are fequently used include ```User_id``` and ```email```.
- **Booking table** - High-usage columns include ```booking_id```, ```user_id```, ```property_id```, ```status```, and ```start_date```.
- **Property table** - High-usage columns are ```property_id```, ```host_id```, and ```location```. 


2. **Indexes**


-- Index on User Table
```CREATE INDEX idx_user_id ON User(user_id)```
```CREATE INDEX idx_email ON User(email)```

-- Indexes on Booking Table
```CREATE INDEX idx_booking_id on Booking(booking_id)```
```CREATE INDEX idx_booking_user_id on Booking(user_id)```
```CREATE INDEX idx_booking_property_id on Booking(property_id)```
```CREATE INDEX idx_booking_status on Booking(status)```
```CREATE INDEX idx_booking_start_date on Booking(start_date)```

-- Index on Property Table
CREATE INDEX idx_property_id on Property(property_id)
CREATE INDEX idx_property_host_id on Property(host_id)
CREATE INDEX idx_property_location on Property(location)
