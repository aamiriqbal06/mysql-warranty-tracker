DELIMITER $$

CREATE PROCEDURE RegisterServiceEvent (
  IN in_product_id INT,
  IN in_service_center_id INT,
  IN in_service_date DATE,
  IN in_service_type VARCHAR(100),
  IN in_description TEXT
)
BEGIN
  INSERT INTO service_events (
    product_id,
    service_center_id,
    service_date,
    service_type,
    description
  )
  VALUES (
    in_product_id,
    in_service_center_id,
    in_service_date,
    in_service_type,
    in_description
  );
END $$

DELIMITER ;