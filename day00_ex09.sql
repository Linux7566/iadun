SELECT 
(SELECT name FROM person WHERE person.id = person_visits.pizzeria_id) AS pizzeria_name,
(SELECT name FROM pizzeria WHERE pizzeria.id =  person_visits.pizzeria_id) AS FROM 
SELECT * FROM person_visits WHERE visit_date > ('2022-01-07) AND visit_date < ('2022-01-09) 
