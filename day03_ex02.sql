SELECT menu.pizza_name, price
FROM menu
WHERE menu.id NOT IN (
    SELECT menu_id FROM person_orser)
ORDER BY menu.pizza_name, price
