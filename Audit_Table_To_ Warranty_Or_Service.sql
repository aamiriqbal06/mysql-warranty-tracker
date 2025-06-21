CREATE TABLE warranty_audit (
  audit_id INT AUTO_INCREMENT PRIMARY KEY,
  warranty_id INT,
  product_id INT,
  old_status VARCHAR(50),
  new_status VARCHAR(50),
  change_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  action_by VARCHAR(100) DEFAULT 'system'  -- If user info available
);


DELIMITER //

CREATE TRIGGER trg_warranty_status_update
AFTER UPDATE ON warranties
FOR EACH ROW
BEGIN
  IF OLD.status != NEW.status THEN
    INSERT INTO warranty_audit (
      warranty_id,
      product_id,
      old_status,
      new_status
    )
    VALUES (
      OLD.warranty_id,
      OLD.product_id,
      OLD.status,
      NEW.status
    );
  END IF;
END //

DELIMITER ;
