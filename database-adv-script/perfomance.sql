-- Fetch bookings with user, property, and payment details
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.name,
    p.property_name,
    pay.amount
FROM
    Booking b
JOIN
    User u ON b.user_id = u.user_id
JOIN
    Property p ON b.property_id = p.property_id
LEFT JOIN
    Payment pay ON b.booking_id = pay.booking_id;
