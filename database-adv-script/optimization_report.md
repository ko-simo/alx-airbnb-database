# Query Optimization Report

## Initial Query

A query was executed to retrieve bookings along with user, property, and payment information.

## Analysis with EXPLAIN

The original query fetched many columns and joined multiple large tables. Using `EXPLAIN`, we observed:

- High cost joins due to missing indexes
- Full table scans for some joins
- Unnecessary fields selected

## Optimization Applied

- Limited selection to essential columns only
- Ensured indexes exist on `user_id`, `property_id`, and `booking_id`
- Simplified the query to reduce load

## Results

- Query execution time improved significantly
- Less memory and CPU usage
- Cleaner and more maintainable query structure

**Tools Used**: `EXPLAIN ANALYZE`, PostgreSQL optimizer
