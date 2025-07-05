-- Create indexes to improve query performance

-- Index for joining user_id in Booking
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index for joining property_id in Booking
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index for joining property_id in Review
CREATE INDEX idx_review_property_id ON Review(property_id);

-- Index for filtering by start_date in Booking
CREATE INDEX idx_booking_start_date ON Booking(start_date);
