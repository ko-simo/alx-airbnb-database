# Partitioning Performance Report

## Scenario

The `Booking` table was assumed to be large and suffering from slow query performance, especially when filtering by date.

## Action Taken

We partitioned the `Booking` table by `start_date` using range-based partitioning. Separate partitions were created for each year (e.g., 2024, 2025).

## Performance Testing

Queries were executed targeting specific date ranges using `WHERE start_date BETWEEN ...`. The partitioned table showed significantly improved performance by scanning only the relevant partition.

## Observations

- Query execution time was reduced.
- Resource consumption was optimized.
- Data access became more efficient for time-based queries.

---

**Recommendation**: Continue using partitioning for large tables, especially those frequently queried by time or ID ranges.
