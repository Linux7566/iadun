SELECT DISTINCT persom.name
FROM person
INNER JOIN person_order ON person.id = po.person_id
INNER JOIN menu ON po1.menu_id = menu1.id
INNER JOIN person_order ON person.id = po.person_id
INNER JOIN menu ON po2.menu_id = menu2.id
WHERE gender = 'female' AND m1.pizza_name = 'pepperoni' AND m2.pizza_name = 'cheese'
ORDER BY name
