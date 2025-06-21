CREATE VIEW warranty_summary_view AS
SELECT 
  p.model AS product_model,
  c.name AS customer_name,
  w.status AS warranty_status,
  COUNT(s.service_id) AS total_services
FROM products p
JOIN customers c ON p.customer_id = c.customer_id
JOIN warranties w ON p.product_id = w.product_id
LEFT JOIN service_events s ON p.product_id = s.product_id
GROUP BY p.model, c.name, w.status;