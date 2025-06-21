CREATE TABLE service_events (
  service_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  service_date DATE,
  service_type VARCHAR(50),
  description TEXT,
  service_center_id INT,
  status VARCHAR(50) NOT NULL DEFAULT 'Pending',
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (service_center_id) REFERENCES service_centers(service_center_id)
);

INSERT INTO service_events (product_id, service_date, service_type, description, service_center_id, status)
VALUES
(1, '2025-05-15', 'Repair', 'Replaced battery', 1, 'Completed'),
(1, '2025-06-10', 'Checkup', 'Routine check', 2, 'Completed'),
(2, '2025-06-05', 'Repair', 'Screen fixed', 1, 'Pending'),
(1, '2025-06-15', 'Checkup', 'Sound issue checked', 1, 'Completed'),
(3, '2025-06-18', 'Repair', 'Camera fixed', 3, 'Completed');
