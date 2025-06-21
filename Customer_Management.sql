CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  phone VARCHAR(15),
  address VARCHAR(255)
);

INSERT INTO customers (name, email, phone, address) VALUES
('Aamir Iqbal', 'aamir@example.com', '9876543210', 'Chennai, Tamil Nadu'),
('Rahul Mehta', 'rahul@example.com', '9123456780', 'Mumbai, Maharashtra'),
('Fatima Sheikh', 'fatima@example.com', '9988776655', 'Hyderabad, Telangana'),
('Karan Verma', 'karan@example.com', '9000011122', 'Delhi, India'),
('Neha Reddy', 'neha@example.com', '9331122334', 'Bangalore, Karnataka');
