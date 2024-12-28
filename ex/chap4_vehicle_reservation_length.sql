ALTER TABLE
    vehicle_reservations
ADD
    CONSTRAINT vehicle_reservation_minimum_length CHECK (ends_at >= (starts_at + INTERVAL '30 minutes'));
