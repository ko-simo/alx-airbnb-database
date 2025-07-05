SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name,
    p.property_id,
    p.property_name,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM
    Booking b
INNER JOIN User u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
