SELECT SUM(materials.cost * materialsInSpecifications.count * productsInOrders.count) FROM orders
JOIN productsInOrders on productsInOrders.order_id = orders.id
JOIN products on products.id = productsInOrders.product_id
JOIN specifications on products.id = specifications.product
JOIN materialsInSpecifications on specifications.id = materialsInSpecifications.specification
JOIN materials on materials.id = materialsInSpecifications.material
GROUP BY orders.customer;