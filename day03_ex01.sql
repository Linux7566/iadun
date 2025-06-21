SELECT menu.id
FROM menu WHERE menu.id NOT IN ( 
  SELECT menu_id DROM person_order)
ORDER BY menu.id
