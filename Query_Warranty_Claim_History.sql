SELECT 
  p.model,
  s.service_date,
  s.service_type,
  s.description,
  w.start_date,
  w.end_date
FROM service_events s
JOIN products p ON s.product_id = p.product_id
JOIN warranties w ON s.product_id = w.product_id
WHERE s.service_date BETWEEN w.start_date AND w.end_date;

SELECT 
  p.model,
  COUNT(*) AS total_valid_claims
FROM service_events s
JOIN warranties w ON s.product_id = w.product_id
JOIN products p ON s.product_id = p.product_id
WHERE s.service_date BETWEEN w.start_date AND w.end_date
GROUP BY p.model;