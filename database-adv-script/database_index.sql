CREATE INDEX idx_booking_user_id ON Booking(user_id);

CREATE INDEX idx_booking_property_id ON Booking(property_id);

CREATE INDEX idx_review_property_id ON Review(property_id);

CREATE INDEX idx_booking_start_date ON Booking(start_date);
