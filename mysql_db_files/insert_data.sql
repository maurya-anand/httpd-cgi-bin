-- File: insert_data.sql

CREATE TABLE IF NOT EXISTS customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);

INSERT INTO customer (customer_id, customer_name)
VALUES 
(FLOOR(RAND() * 1000), 'Emily Johnson'),
(FLOOR(RAND() * 1000), 'Michael Smith'),
(FLOOR(RAND() * 1000), 'Sarah Miller'),
(FLOOR(RAND() * 1000), 'James Brown'),
(FLOOR(RAND() * 1000), 'Jessica Davis'),
(FLOOR(RAND() * 1000), 'David Wilson'),
(FLOOR(RAND() * 1000), 'Amanda Moore'),
(FLOOR(RAND() * 1000), 'Robert Taylor'),
(FLOOR(RAND() * 1000), 'Jennifer White'),
(FLOOR(RAND() * 1000), 'William Harris');