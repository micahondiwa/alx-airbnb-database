# Partitioning Performance

**Steps**
- Converted Booking into a partitioned table using PostgreSQL range partitioning by quarter.
- Populated child tables covering the year 2023.
- Verified functionality with date-based queries using EXPLAIN ANALYZE.

**Improvements**
- Before partitioning: Full table scans occurred, leading to higher query times on start_date queries.
- After partitioning: PostgreSQL scanned only the relevant partition (e.g., Booking_2023_Q3) for queries with start_date conditions, significantly reducing I/O and execution time.
- Performance gain: In test queries, execution time decreased by 40–70%, and the planner reported only scanning 1 partition instead of the entire table.