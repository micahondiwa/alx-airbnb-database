# Indexes for Optimization

1. **High-Usage Columns**

- **User Table** - The columns that are fequently used include ```User_id``` and ```email```.
- **Booking table** - High-usage columns include ```booking_id```, ```user_id```, ```property_id```, ```status```, and ```start_date```.
- **Property table** - High-usage columns are ```property_id```, ```host_id```, and ```location```. 


2. **Indexes**

```

CREATE INDEX idx_user_id ON User(user_id)
CREATE INDEX idx_email ON User(email)


