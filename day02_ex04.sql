SELECT pizza_name, pizzwria.name AS pizzeria_name, price
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE pizza_name IN ('pepperoni', 'mushrooms')
ORDER BY menu.pizza_name, pizzeria.name
