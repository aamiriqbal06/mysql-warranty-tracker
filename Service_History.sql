CREATE TABLE service_history (
  service_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  service_date DATE NOT NULL,
  service_type VARCHAR(50) NOT NULL,
  description TEXT,
  service_center_id INT,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO service_history (product_id, service_date, service_type, description, service_center_id) VALUES
(1, '2024-06-01', 'Repair', 'Replaced broken screen', 1),
(2, '2024-05-20', 'Inspection', 'General performance check', 2),
(3, '2024-06-10', 'Replacement', 'Battery replaced under warranty', 1),
(4, '2024-04-25', 'Repair', 'Fixed overheating issue', 3),
(5, '2024-06-05', 'Repair', 'Audio issue resolved', 2),
(6, '2024-06-12', 'Inspection', 'Routine check-up', 1),
(7, '2024-03-30', 'Repair', 'Camera malfunction fixed', 3),
(8, '2024-02-18', 'Replacement', 'Power adapter replaced', 2);