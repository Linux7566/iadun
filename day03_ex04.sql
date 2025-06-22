WITH pop AS (
  SELECT p.name AS pizzeria_name, per.gender
  FROM person_order po
  JOIN person per ON po.person_id = per.id
  JOIN menu m ON po.menu_id = m.id
  JOIN pizzeria p ON m.pizzeria_id = p.id)
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
