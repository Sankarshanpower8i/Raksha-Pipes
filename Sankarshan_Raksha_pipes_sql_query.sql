create database raksha_pipesdata;
use raksha_pipesdata;
-- Create Categories table
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255)
);

-- Create Warehouses table
CREATE TABLE Warehouses (
    warehouse_id INT AUTO_INCREMENT PRIMARY KEY,
    warehouse_name VARCHAR(255),
    location VARCHAR(255)
);

-- Create Manufacturing_Units table
CREATE TABLE Manufacturing_Units (
    unit_id INT AUTO_INCREMENT PRIMARY KEY,
    unit_name VARCHAR(255),
    location VARCHAR(255)
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255),
    customer_address VARCHAR(255),
    customer_contact VARCHAR(255)
);

-- Create Products table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    category_id INT,
    warehouse_id INT,
    unit_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id),
    FOREIGN KEY (unit_id) REFERENCES Manufacturing_Units(unit_id)
);

-- Create Sales table
CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Employees table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255),
    department VARCHAR(255),
    designation VARCHAR(255)
);

-- Create Exports table
CREATE TABLE Exports (
    export_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    destination_country VARCHAR(255),
    quantity INT,
    export_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

select * from customers; 
select * from categories;
select * from sales;
select * from employees;
select * from exports;
select * from manufacturing_units;
select * from products;
select * from warehouses;

UPDATE products
SET product_name = CASE
    WHEN product_name = 'some' THEN 'uPVC COLUMN PIPES'
    WHEN product_name = 'across' THEN 'PTMT TAPS'
    WHEN product_name = 'close' THEN 'Shower'
    WHEN product_name = 'involve' THEN 'TOILET BRUSHES'
    WHEN product_name = 'account' THEN 'Braided Pipes'
    WHEN product_name = 'area' THEN 'SCRUBBERS'
    WHEN product_name = 'mind' THEN 'Duct'
    WHEN product_name = 'question' THEN 'Water Tanks'
    WHEN product_name = 'deep' THEN 'Steel Wire Reinforced'
    WHEN product_name = 'present' THEN 'HDPE Pipes'
    WHEN product_name = 'occur' THEN 'Casing Pipe'
    WHEN product_name = 'past' THEN 'CPVC'
    WHEN product_name = 'information' THEN 'Flushing Cistern'
    WHEN product_name = 'student' THEN 'SVR'
    WHEN product_name = 'fish' THEN 'Broom'
    WHEN product_name = 'player' THEN 'UPVC'
    WHEN product_name = 'from' THEN 'Water Barrals'
    WHEN product_name = 'meeting' THEN 'HDPE-Braided Pipes'
    WHEN product_name = 'run' THEN 'Small Barrals'
    WHEN product_name = 'president' THEN 'LDPE-Braided Pipes'
END;

-- # TO combine the data
-- SELECT 
--     c.customer_id, 
--     c.customer_name, 
--     c.customer_address, 
--     c.customer_contact, 
--     p.product_id, 
--     p.product_name, 
--     p.category_id, 
--     ca.category_name, 
--     s.sale_id, 
--     s.quantity, 
--     s.sale_date, 
--     e.employee_id, 
--     e.employee_name, 
--     e.department, 
--     e.designation, 
--     m.unit_id, 
--     m.unit_name, 
--     m.location AS manufacturing_unit_location, 
--     w.warehouse_id, 
--     w.warehouse_name, 
--     w.location AS warehouse_location, 
--     ex.export_id, 
--     ex.destination_country, 
--     ex.quantity AS export_quantity, 
--     ex.export_date 
-- FROM 
--     Customers c 
--     LEFT JOIN Sales s ON c.customer_id = s.customer_id 
--     LEFT JOIN Products p ON s.product_id = p.product_id 
--     LEFT JOIN Categories ca ON p.category_id = ca.category_id 
--     LEFT JOIN Employees e ON e.department = 'Sales' 
--     LEFT JOIN Manufacturing_Units m ON p.category_id = m.unit_id 
--     LEFT JOIN Exports ex ON ex.product_id = p.product_id 
--     LEFT JOIN Warehouses w ON ex.destination_country = w.location;
-- # then expoted to the csv 


