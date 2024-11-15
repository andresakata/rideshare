ALTER TABLE
    vehicle_reservations
ADD
    CONSTRAINT vehicle_reservations_starts_before_ends CHECK (starts_at < ends_at);
