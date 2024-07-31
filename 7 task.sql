
                                              --2--

SELECT products.product_name , products.quantity_per_unit , suppliers.contact_name , suppliers.phone 
FROM products
FULL OUTER JOIN suppliers ON products.supplier_id = suppliers.supplier_id
WHERE products.category_id = 8 or products.category_id = 1 AND products.discontinued = 1


                                             --3--
SELECT contact_name , orders.order_id
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.customer_id <> orders.customer_id




                                             --4--

SELECT contact_name , orders.order_id
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.customer_id <> orders.customer_id

SELECT contact_name , orders.order_id
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.customer_id <> orders.customer_id