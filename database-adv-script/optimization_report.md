# Query Optimization Report

## Initial Query

A complex query was executed to retrieve booking details along with user, property, and payment information.

## Analysis with EXPLAIN

Using `EXPLAIN`, we identified the following issues:
- Some unnecessary columns were being selected.
- Some joins were redundant or not optimized.
- There were no supporting indexes on the join columns.

## Optimization Implemented

- Selected only the required columns to reduce I/O.
- Ensured indexes existed on the commonly joined columns (`user_id`, `property_id`, `booking_id`).
- Refactored the query to minimize joins and focus on essential relationships.

## Results

Execution time was significantly improved, with reduced memory usage and faster response.

---

**Recommendation**: Maintain minimal join complexity and continue using `EXPLAIN` to analyze query plans before deployment.
