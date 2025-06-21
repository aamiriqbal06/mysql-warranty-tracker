CREATE USER 'manager_user'@'localhost' IDENTIFIED BY 'manager_pass';
CREATE USER 'technician_user'@'localhost' IDENTIFIED BY 'tech_pass';
GRANT SELECT ON warranty_db.* TO 'manager_user'@'localhost';
GRANT INSERT ON warranty_db.service_events TO 'technician_user'@'localhost';
FLUSH PRIVILEGES;