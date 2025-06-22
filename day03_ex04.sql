WITH pop AS (
  SELECT p.name AS pizzeria_name, per.gender
  FROM person_order
  JOIN person ON po.person_id = per.id
  JOIN menu ON po.menu_id = m.id
  JOIN pizzeria ON m.pizzeria_id = p.id)
SELECT DISTINCT pizzeria_name
FROM (
  SELECT pizzeria_name FROM pop WHERE gender = 'male'
  EXCEPT
  SELECT pizzeria_name FROM pop WHERE gender = 'female'
  UNION
  SELECT pizzeria_name FROM pop WHERE gender = 'female'
  EXCEPT
  SELECT pizzeria_name FROM pop WHERE gender = 'male'
) AS only_gender
ORDER BY pizzeria_name
