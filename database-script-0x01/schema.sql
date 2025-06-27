CREATE TABLE User (
    user_id UUID PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    password_hash varchar(255) NOT NULL,
    phone_number varchar(20),
    role ENUM('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE Property (
    property_id UUID PRIMARY KEY,
    host_id user_id NOT NULL,
    name varchar(255) NOT NULL,
    description TEXT NOT NULL,
    location varchar(255) NOT NULL,
    pricepernight DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES User(user_id) ON DELETE CASECADE,
    INDEX(property_id)
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

CREATE TABLE Payment(
    payment_id,
    booking_id,
    amount,
    payment_date,
    payment_method
);

CREATE TABLE Review(
    review_id,
    property_id,
    user_id,
    rating,
    comment,
    created_at
);

CREATE TABLE Message(
    message_id,
    sender_id,
    recipient_id,
    message_body,
    sent_at,
);