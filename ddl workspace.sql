CREATE DATABASE Sales;


USE Sales;


CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY, 
    Customer_name VARCHAR(100) NOT NULL, 
    Product_Category VARCHAR(50),
    Ordered_item VARCHAR(100) NOT NULL,  
    Contact_No VARCHAR(15) UNIQUE );

ALTER TABLE Orders ADD order_quantity INT NOT NULL;

ALTER TABLE Orders RENAME TO sales_orders;

INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
 VALUES
(1, 'Alice Johnson', 'Electronics', 'Smartphone', '1234567890', 2),
(2, 'Bob Smith', 'Furniture', 'Office Chair', '2345678901', 1),
(3, 'Charlie Brown', 'Clothing', 'Jacket', '3456789012', 3),
(4, 'David White', 'Home Appliances', 'Microwave', '4567890123', 1),
(5, 'Emma Davis', 'Electronics', 'null', '5678901234', 2),
(6, 'Frank Harris', 'Clothing', 'Shoes', '6789012345', 1),
(7, 'Grace Miller', 'Furniture', 'Table', '7890123456', 4),
(8, 'Hannah Wilson', 'Home Appliances', 'Vacuum Cleaner', '8901234567', 2),
(9, 'Ian Scott', 'Electronics', 'Tablet', '9012345678', 3),
(10, 'Jane Adams', 'Clothing', 'Dress', '0123456789', 1);

select * from sales_orders;
SELECT Customer_name, Ordered_item FROM sales_orders;



UPDATE sales_orders 
SET Ordered_item = 'Gaming Laptop' 
WHERE Order_Id = 5;

DROP TABLE sales_orders;
insert into sales_orders values (11,'john rahul','Electronics','Fan','0123456789',2);
