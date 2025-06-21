CREATE TABLE service_centers (
  service_center_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  contact_number VARCHAR(15),
  address VARCHAR(255)
);

INSERT INTO service_centers (name, contact_number, address) VALUES
('TechFix Solutions', '9876543210', '123 MG Road, Bengaluru'),
('GadgetCare Hub', '8765432109', '45 Nehru Street, Chennai'),
('SmartRepair Services', '7654321098', '22 Park Lane, Hyderabad');
