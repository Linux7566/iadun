SELECT person.name, order_date AS action_date FROM person_order WHERE person_order.person_id = person.id
ORDER BY action_date ASC, person.name DESC
