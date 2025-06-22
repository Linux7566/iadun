WITH pvp AS (
  SELECT p.name AS pizzeria_name, per.gender FROM person_visits pv
  JOIN person ON pv.person_id = person.id
  JOIN pizzeria ON pv.pizzeria_id = p.id)
SELECT pizzeria_name FROM (
  SELECT pizzeria_name FROM pvp WHERE gender = 'male'
  EXCEPT ALL
  SELECT pizzeria_name FROM pvp WHERE gender = 'female')
UNION ALL
SELECT pizzeria_name FROM (
  SELECT pizzeria_name FROM pvp WHERE gender = 'female'
  EXCEPT ALL
  SELECT pizzeria_name FROM pvp WHERE gender = 'male')
ORDER BY pizzeria_name
