-- Total number of bookings per user
SELECT
    u.user_id,
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM
    User u
LEFT JOIN
    Booking b ON u.user_id = b.user_id
GROUP BY
    u.user_id, u.name;

-- Ranking properties based on number of bookings using RANK()
SELECT
    property_id,
    property_name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank
FROM (
    SELECT
        p.property_id,
        p.property_name,
        COUNT(b.booking_id) AS total_bookings
    FROM
        Property p
    LEFT JOIN
        Booking b ON p.property_id = b.property_id
    GROUP BY
        p.property_id, p.property_name
) AS property_booking_counts;
