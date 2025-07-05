# Index Performance Report

## Created Indexes

- `idx_booking_user_id` on the `Booking` table (column `user_id`)
- `idx_booking_property_id` on the `Booking` table (column `property_id`)
- `idx_review_property_id` on the `Review` table (column `property_id`)
- `idx_booking_start_date` on the `Booking` table (column `start_date`)

## Performance Before Indexing

We used `EXPLAIN ANALYZE` on queries involving `WHERE`, `JOIN`, and `ORDER BY` clauses on the above columns.

Execution times were relatively high, and full table scans were often performed.

## Performance After Indexing

After creating the indexes, a significant improvement in query execution time was observed. The database engine utilized the indexes to locate rows quickly instead of performing full scans.

---

**Recommendation**: Continue monitoring query performance and add indexes as needed based on query patterns.
