WITH pzm AS (
  SELECT m.pizza_name, p.name AS pizzeria_name, m.price
  FROM menu
  JOIN pizzeria ON m.pizzeria_id = p.id
)
SELECT p1.pizza_name, p1.pizzeria_name AS pizzeria_name_1, p2.pizzeria_name AS pizzeria_name_2, p1.price
FROM pzm1
JOIN pzm2
  ON p1.pizza_name = p2.pizza_name
 AND p1.price = p2.price
 AND p1.pizzeria_name < p2.pizzeria_name
ORDER BY p1.pizza_name
