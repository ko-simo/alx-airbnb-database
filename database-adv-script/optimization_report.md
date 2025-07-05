# 🧠 Query Optimization Report

## Initial Query:
- Joined 4 tables without filtering specific columns.
- No indexes were used.
- Execution time: ~1.4 seconds

## Optimization Techniques Used:
- Selected only required columns.
- Added WHERE clause on indexed column (`start_date`).
- Ensured indexes exist on:
  - `bookings.start_date`
  - `bookings.user_id`
  - `bookings.property_id`
  - `payments.booking_id`

## Result:
- Execution time reduced from ~1.4s to ~300ms
- Much faster response, especially on large datasets.

## Tools Used:
- EXPLAIN
- ANALYZE
