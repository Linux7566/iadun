SELECT name, rating 
FROM pizzeria 
WHERE id NOT NULL (
  SELECT pizzeria_id FROM person_visits)
