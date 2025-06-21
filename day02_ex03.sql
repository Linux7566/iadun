WITH сte_orders AS ( 
  SELECT generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 day') AS date),
SELECT cte_orders.date::date AS missing_date
FROM cte_orders
LEFT JOIN (SELECT visit_date FROM person_visits WHERE person_id IN (1,2))
WHERE visits.visit_date IS NULL
ORDER BY missing_fate ASC
