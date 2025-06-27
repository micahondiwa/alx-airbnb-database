-- Sample User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  (UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '123-456-7890', 'guest'),
  (UUID(), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '321-654-0987', 'host'),
  (UUID(), 'Carol', 'Williams', 'carol@example.com', 'hashed_pw3', '555-000-1111', 'admin');

-- Property Table

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1000000-p100-p100-p100-p10000000000', 'b1111111-b111-b111-b111-b11111111111', 'Seaside Villa', 'A beautiful villa by the sea.', 'Malibu, CA', 350.00),
  ('p2000000-p200-p200-p200-p20000000000', 'd2222222-d222-d222-d222-d22222222222', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Aspen, CO', 220.00);

--Booking Table

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b3000000-b300-b300-b300-b30000000000', 'p1000000-p100-p100-p100-p10000000000', 'a3333333-a333-a333-a333-a33333333333', '2025-07-01', '2025-07-05', 1400.00, 'confirmed'),
  ('b4000000-b400-b400-b400-b40000000000', 'p2000000-p200-p200-p200-p20000000000', 'a3333333-a333-a333-a333-a33333333333', '2025-08-10', '2025-08-13', 660.00, 'pending');

-- Payment
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay5000000-pay5-pay5-pay5-pay50000000000', 'b3000000-b300-b300-b300-b30000000000', 1400.00, 'credit_card'),
  ('pay6000000-pay6-pay6-pay6-pay60000000000', 'b4000000-b400-b400-b400-b40000000000', 660.00, 'paypal');

-- Review 
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r7000000-r700-r700-r700-r70000000000', 'p1000000-p100-p100-p100-p10000000000', 'a3333333-a333-a333-a333-a33333333333', 5, 'Absolutely loved the villa! Clean and relaxing.'),
  ('r8000000-r800-r800-r800-r80000000000', 'p2000000-p200-p200-p200-p20000000000', 'a3333333-a333-a333-a333-a33333333333', 4, 'Great stay, but the WiFi was slow.');
