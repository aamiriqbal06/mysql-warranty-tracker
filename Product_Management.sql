CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  serial_number VARCHAR(50) NOT NULL UNIQUE,
  model VARCHAR(100) NOT NULL,
  purchase_date DATE NOT NULL,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

INSERT INTO products (serial_number, model, purchase_date, customer_id) VALUES
('SN1001', 'Samsung Galaxy S21', '2024-01-15', 1),
('SN1002', 'Dell XPS 13', '2023-12-10', 2),
('SN1003', 'iPhone 13', '2024-03-20', 3),
('SN1004', 'HP Spectre x360', '2023-11-05', 4),
('SN1005', 'Sony Bravia 55"', '2024-02-25', 5),
('SN1006', 'Apple Watch SE', '2024-01-30', 1),
('SN1007', 'Canon EOS 1500D', '2024-04-10', 2),
('SN1008', 'Lenovo Legion 5', '2023-10-18', 3),
('SN1009', 'OnePlus Nord 2T', '2024-02-12', 4),
('SN1010', 'Asus ROG Phone 7', '2023-09-07', 5);

}