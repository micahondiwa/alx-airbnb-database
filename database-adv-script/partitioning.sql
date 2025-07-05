-- partitioning.sql

-- SRename the original table (optional for backup)
ALTER TABLE Booking RENAME TO Booking_old;

-- Create the new partitioned Booking table
CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    property_id INT NOT NULL,
    user_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    total_price DECIMAL(10,2),
    status VARCHAR(50),
    created_at TIMESTAMP,

    -- Foreign keys (optional depending on DB settings)
    -- FOREIGN KEY (property_id) REFERENCES Property(property_id),
    -- FOREIGN KEY (user_id) REFERENCES User(user_id)
) PARTITION BY RANGE (start_date);

-- Create child partitions for each quarter (adjust ranges as needed)
CREATE TABLE Booking_2023_Q1 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2023-04-01');

CREATE TABLE Booking_2023_Q2 PARTITION OF Booking
    FOR VALUES FROM ('2023-04-01') TO ('2023-07-01');

CREATE TABLE Booking_2023_Q3 PARTITION OF Booking
    FOR VALUES FROM ('2023-07-01') TO ('2023-10-01');

CREATE TABLE Booking_2023_Q4 PARTITION OF Booking
    FOR VALUES FROM ('2023-10-01') TO ('2024-01-01');

-- Migrate data from old table
INSERT INTO Booking
SELECT * FROM Booking_old;


EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE start_date >= '2023-07-01' AND start_date < '2023-10-01';
