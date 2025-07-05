# performance Monitoring

1. **Bottlenecks Identified:**

- Sequential scan on Booking
- No index on start_date, user_id, or status
- Poor partition pruning in some cases

2. **Optimizations Implemented:**
- Added composite indexes on start_date, user_id, and status
- Confirmed partitioning on start_date is effective
- Added foreign key constraints to improve planner efficiency

3. **Results:**
- Avg query time reduced by 40–70%
- Index scans replaced full scans
- Partition pruning worked correctly
- Significant speedup on user-based and time-based filters