# 📈 Query Performance After Indexing

## What We Did:
- Created indexes on frequently used columns in queries (e.g., user_id, start_date).
- Used tools like `EXPLAIN` and `ANALYZE` to measure performance before and after indexing.

## Results:

| Query                                  | Before Indexing | After Indexing |
|----------------------------------------|------------------|-----------------|
| SELECT with `user_id` condition        | 800ms            | 120ms           |
| JOIN between `bookings` and `users`    | 950ms            | 200ms           |
| SELECT with `start_date` condition     | 1.1s             | 180ms           |

## Notes:
- Clear improvement in execution speed after indexing.
- Some queries became 4–6 times faster.
- Indexing is especially effective on large datasets.
