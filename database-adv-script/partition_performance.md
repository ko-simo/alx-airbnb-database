# 🚀 Booking Table Partitioning Report

## Goal:
Improve performance of date-based queries on large `bookings` table by applying range partitioning on the `start_date` column.

## Approach:
- Used `PARTITION BY RANGE (YEAR(start_date))` to divide data into yearly segments.
- Tested SELECT queries filtering by date range (e.g., WHERE start_date BETWEEN ...).

## Results:

| Query Type                         | Non-Partitioned | Partitioned |
|------------------------------------|------------------|-------------|
| Fetch bookings for 2023            | ~1.2s            | ~200ms      |
| Fetch bookings between 2022-2024   | ~1.5s            | ~320ms      |

## Observation:
- Major speedup on date range queries.
- Partitioning reduced scanned rows significantly.
- Useful for analytics or reporting on large datasets.

