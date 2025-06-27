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
