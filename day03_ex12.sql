INSERT INTO person_order
SELECT person.id, menu.id, '2022-02-25' FROM person
JOIN menu ON m.pizza_name = 'greek pizza'
WHERE m.price IS NOT NULL
