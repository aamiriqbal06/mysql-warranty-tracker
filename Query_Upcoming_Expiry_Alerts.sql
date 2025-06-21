SELECT 
  p.model AS product_model,
  w.end_date,
  DATEDIFF(w.end_date, CURDATE()) AS days_left
FROM warranties w
JOIN products p ON w.product_id = p.product_id
WHERE w.end_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);