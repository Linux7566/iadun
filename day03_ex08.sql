INSERT INTO menu (id, pizza_name, price, pizzeria_id)
VALUES ((SELECT MAX(menu_id) + 1 FROM menu),  'sicilian pizza', 900,
  (SELECT id FROM pizzeria WHERE name = 'Dominos'))
