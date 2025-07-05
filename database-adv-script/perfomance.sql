SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    b.created_at AS booking_created_at,

    u.user_id,
    u.first_name,
    u;last_name,
    u.email,
    u.phone_number,
    u.role,
    u.created_at AS user_created_at,

    p.property_id,
    p.name AS property_name,
    p.description,
    p.location,
    p.pricepernight,
    p.created_at AS property_created_at,
    p.update_at AS property_updated_at,

    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.payment_method,

FROM Booking b
JOIN User u on b.user_id = u.user_id
JOIN Property p on b.property_id=p.property_id
LEFT JOIN Payment pay on b.booking_id=pay.booking_id;

-- Analyze performance
EXPLAIN
SELECT
    b.booking_id,
    ...
FROM Booking b
JOIN User u on b.user_id=user_id
JOIN Property p ON b.property_id=p.property_id
LEFT JOIN Payment pay ON b.booking_id=pay.booking_id;