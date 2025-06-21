SELECT 
  p.model AS product_model,
  w.warranty_type,
  w.start_date,
  w.end_date,
  IF(CURDATE() BETWEEN w.start_date AND w.end_date, 'Yes', 'No') AS is_under_warranty
FROM warranties w
JOIN products p ON w.product_id = p.product_id;