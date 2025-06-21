SELECT person_order AS action_date, person_id FROM person_order
JOIN person_visits ON person_order.person_id = person_visits.person_id AND order_date = visit_date
ORDER BY action_date, person_order.person_id DESC
