-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, role)
VALUES 
(UUID(), 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', 'guest'),
(UUID(), 'Alice', 'Smith', 'alice.smith@example.com', 'hashedpassword2', 'host');

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
(UUID(), (SELECT user_id FROM User WHERE email='alice.smith@example.com'), 'Cozy Apartment', 'A nice cozy place.', 'New York', 120.00);

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(UUID(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE email='john.doe@example.com'), '2025-07-01', '2025-07-05', 480.00, 'confirmed');

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
(UUID(), (SELECT booking_id FROM Booking WHERE total_price=480.00), 480.00, 'credit_card');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
(UUID(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE email='john.doe@example.com'), 5, 'Excellent stay!');

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
(UUID(), (SELECT user_id FROM User WHERE email='john.doe@example.com'), (SELECT user_id FROM User WHERE email='alice.smith@example.com'), 'Is the apartment available next weekend?');
