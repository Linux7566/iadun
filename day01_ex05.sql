SELECT person.id, pizzeria.id 
FROM person 
CROSS JOIN pizzeria
ORDER BY person.id, pizzeria.id
