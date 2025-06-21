CREATE TABLE warranties (
  warranty_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  warranty_type ENUM('standard', 'extended') NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  status VARCHAR(20) NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO warranties (product_id, warranty_type, start_date, end_date, status) VALUES
(1, 'standard', '2024-01-15', '2025-01-15', 'active'),
(2, 'extended', '2023-12-10', '2026-12-10', 'active'),
(3, 'standard', '2024-03-20', '2025-03-20', 'active'),
(4, 'standard', '2023-11-05', '2024-11-05', 'active'),
(5, 'extended', '2024-02-25', '2027-02-25', 'active'),
(6, 'standard', '2024-01-30', '2025-01-30', 'active'),
(7, 'standard', '2024-04-10', '2025-04-10', 'active'),
(8, 'extended', '2023-10-18', '2026-10-18', 'active'),
(9, 'standard', '2024-02-12', '2025-02-12', 'active'),
(10, 'extended', '2023-09-07', '2026-09-07', 'active');
