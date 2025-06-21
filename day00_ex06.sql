SELECT 
  (SELECT name FROM person WHERE person.id = orders.person_id) AS name,
    CASE
      WHEN (SELECT name FROM person WHERE person_id = orders.person_id) = 'Denis' 
        THEN TRUE
        ELSE FALSE
        END AS check_name
FROM orders WHERE menu_id IN (13, 14, 18) AND order_date = ('2022-01-07')
    
