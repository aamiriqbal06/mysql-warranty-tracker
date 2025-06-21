SELECT 
  p.model AS product_model,
  COUNT(s.service_id) AS total_services
FROM service_events s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.model
ORDER BY total_services DESC;