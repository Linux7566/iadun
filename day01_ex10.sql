SELECT person.name AS person_name, menu.pizza_name, pizzeria.name AS pizzeria_name
FROM person_orser
JOIN person ON o.person_id = p.id
JOIN menu ON o.menu_id = m.id
JOIN pizzeria ON o.pizzeria_id = pizzeria.id
ORDER BY person_name, pizza_name, pizzeria_name
