SELECT
    property_id,
    property_name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT
        p.property_id,
        p.property_name,
        COUNT(b.booking_id) AS total_bookings
    FROM
        Booking b
    JOIN
        Property p ON b.property_id = p.property_id
    GROUP BY
        p.property_id, p.property_name
) AS ranked_properties;
