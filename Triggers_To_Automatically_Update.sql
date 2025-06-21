SET GLOBAL event_scheduler = ON;
CREATE EVENT IF NOT EXISTS update_warranty_status
ON SCHEDULE EVERY 1 DAY
DO
  UPDATE warranties
  SET status = 'expired'
  WHERE end_date < CURDATE() AND status != 'expired';