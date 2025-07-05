# 🛠️ Database Performance Monitoring Report

## Tools Used:
- `EXPLAIN` — to view the query execution plan.
- `SHOW PROFILE` — to check resource usage (CPU, memory, etc.).
- `EXPLAIN ANALYZE` — for detailed performance breakdown.

## Queries Monitored:
- Booking search by user and date.
- Complex joins across `bookings`, `users`, and `payments`.

## Bottlenecks Identified:
- Missing indexes on `user_id`, `start_date`, and `booking_id`.
- Redundant joins retrieving unused fields.

## Actions Taken:
- Created indexes on key columns (see `database_index.sql`).
- Optimized SELECT statements by only including necessary columns.
- Partitioned the `bookings` table by year to improve date filtering.

## Improvements:
| Metric                  | Before         | After          |
|-------------------------|----------------|----------------|
| Query Execution Time    | ~1.3s          | ~250ms         |
| Rows Scanned            | 50,000+        | ~10,000        |

## Conclusion:
Regular profiling + indexing + partitioning can significantly improve database performance in real-world apps.
