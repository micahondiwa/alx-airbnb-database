# partition_performance.mdcode

EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE start_date >= '2023-07-01' AND start_date < '2023-10-01';
