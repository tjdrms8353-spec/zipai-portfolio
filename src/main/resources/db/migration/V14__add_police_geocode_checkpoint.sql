ALTER TABLE safe_infrastructure
  ADD COLUMN geocode_status VARCHAR(20) NOT NULL DEFAULT 'NOT_ATTEMPTED' AFTER longitude,
  ADD COLUMN geocode_attempts INT NOT NULL DEFAULT 0 AFTER geocode_status,
  ADD COLUMN geocode_last_attempt_at DATETIME(6) NULL AFTER geocode_attempts,
  ADD COLUMN geocode_error VARCHAR(255) NULL AFTER geocode_last_attempt_at;

CREATE INDEX idx_safe_infra_geocode_status
  ON safe_infrastructure (facility_type, geocode_status, id);

UPDATE safe_infrastructure
SET geocode_status = CASE
  WHEN latitude IS NOT NULL AND longitude IS NOT NULL THEN 'VERIFIED'
  ELSE 'NOT_ATTEMPTED'
END;
