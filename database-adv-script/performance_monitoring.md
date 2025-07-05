# Database Performance Monitoring Report

## Tools Used

- `EXPLAIN`
- `EXPLAIN ANALYZE`
- `SHOW PROFILE` (where supported)

## Queries Monitored

Example:

```sql
SELECT b.booking_id, u.name, p.property_name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE b.start_date >= '2025-01-01';
