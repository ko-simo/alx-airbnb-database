SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name,
    u.email
FROM
    Booking b
INNER JOIN
    User u ON b.user_id = u.user_id;

SELECT
    p.property_id,
    p.property_name,
    r.review_id,
    r.rating,
    r.comment
FROM
    Property p
LEFT JOIN
    Review r ON p.property_id = r.property_id;

SELECT
    u.user_id,
    u.name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM
    User u
FULL OUTER JOIN
    Booking b ON u.user_id = b.user_id;

SELECT
    u.user_id,
    u.name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM
    User u
LEFT JOIN
    Booking b ON u.user_id = b.user_id

UNION

SELECT
    u.user_id,
    u.name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM
    Booking b
LEFT JOIN
    User u ON u.user_id = b.user_id
WHERE u.user_id IS NULL;
