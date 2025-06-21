SELECT DISTINCT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM person_order 
JOIN person ON person.order.person_id = person.id
JOIN menu ON po.menu_id = menu.id
JOIN pizzeria ON m.pizzeria_id = pizzeria.id
WHERE person.name IN ('Denis', 'Anna')
ORDER BY m.pizza_name, pizzeria.name
