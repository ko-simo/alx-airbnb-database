-- 🔹 1. INNER JOIN: الحجوزات مع بيانات المستخدمين المرتبطين بها
SELECT
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 🔹 2. LEFT JOIN: كل الممتلكات حتى بدون تقييم
SELECT
    properties.id AS property_id,
    properties.name,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- 🔹 3. FULL OUTER JOIN: جميع المستخدمين والحجوزات حتى غير المرتبطين ببعض
-- ⚠️ إذا كنت تستعمل MySQL (الذي لا يدعم FULL OUTER JOIN مباشرة)، يمكنك استخدام:
SELECT
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.start_date
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id;

