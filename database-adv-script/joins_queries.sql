SELECT
    bookings.id,
    bookings.start_date,
    bookings.end_date,
    users.id,
    users.name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

SELECT
    properties.id,
    properties.name,
    reviews.id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

SELECT
    users.id,
    users.name,
    bookings.id,
    bookings.start_date
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT
    users.id,
    users.name,
    bookings.id,
    bookings.start_date
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id
WHERE users.id IS NULL
ORDER BY id;
