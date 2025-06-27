CREATE TABLE User (
    user_id,
    first_name varchar(),
    last_name varchar(),
    email varchar(),
    password_hash varchar(),
    phone_number varchar(),
    role,
    created_at,
);

CREATE TABLE Property (
    property_id,
    host_id user_id,
    name varchar(),
    description,
    location varchar(),
    pricepernight,
    created_at,
    updated_at,
);

CREATE TABLE Booking(
    booking_id,
    property_id,
    user_id,
    start_date,
    end_date,
    total_price,
    status,
    created_at,
);