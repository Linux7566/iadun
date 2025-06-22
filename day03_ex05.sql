SELECT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person ON pv.person_id = person.id
JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
LEFT JOIN person_order ON po.person_id = person.id
  JOIN menu ON po.menu_id = menu.id AND m.pizzeria_id = pizzeria.id
WHERE person.name = 'Andrey' AND po.menu_id IS NULL
ORDER BY pizzeria.name
