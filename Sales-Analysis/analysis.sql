CREATE TABLE sales (
    "Order ID" TEXT,
    "Order Date" TEXT,
    Region TEXT,
    Category TEXT,
    "Sub-Category" TEXT,
    Sales REAL,
    Quantity INTEGER,
    Profit REAL
);

INSERT INTO sales VALUES
('CA-001','2023-01-05','West','Furniture','Chair',200,2,50),
('CA-002','2023-01-07','East','Technology','Laptop',1200,1,200),
('CA-003','2023-01-10','South','Office','Paper',50,5,10),
('CA-004','2023-01-12','Central','Furniture','Desk',350,1,70),
('CA-005','2023-01-15','West','Technology','Printer',300,1,60),
('CA-006','2023-01-18','East','Office','Pen',20,10,5),
('CA-007','2023-01-20','South','Furniture','Cabinet',450,1,90),
('CA-008','2023-01-22','Central','Technology','Monitor',250,2,40),
('CA-009','2023-01-25','West','Office','Notebook',30,5,7),
('CA-010','2023-01-28','East','Furniture','Chair',220,1,40),
('CA-011','2023-02-01','South','Technology','Laptop',1300,1,220),
('CA-012','2023-02-03','Central','Office','Paper',60,6,12),
('CA-013','2023-02-05','West','Furniture','Desk',400,1,80),
('CA-014','2023-02-07','East','Technology','Printer',280,1,55),
('CA-015','2023-02-10','South','Office','Pen',25,12,6),
('CA-016','2023-02-12','Central','Furniture','Chair',210,1,45),
('CA-017','2023-02-14','West','Technology','Monitor',260,2,45),
('CA-018','2023-02-16','East','Office','Notebook',35,4,8),
('CA-019','2023-02-18','South','Furniture','Cabinet',470,1,95),
('CA-020','2023-02-20','Central','Technology','Laptop',1250,1,210),
('CA-021','2023-02-22','West','Office','Paper',55,5,10),
('CA-022','2023-02-24','East','Furniture','Desk',360,1,70),
('CA-023','2023-02-26','South','Technology','Printer',290,1,60),
('CA-024','2023-02-28','Central','Office','Pen',22,10,5),
('CA-025','2023-03-02','West','Furniture','Chair',225,1,45),
('CA-026','2023-03-04','East','Technology','Monitor',270,2,50),
('CA-027','2023-03-06','South','Office','Notebook',40,6,9),
('CA-028','2023-03-08','Central','Furniture','Cabinet',480,1,100),
('CA-029','2023-03-10','West','Technology','Laptop',1350,1,230),
('CA-030','2023-03-12','East','Office','Paper',65,7,14);

SELECT SUM(Sales) AS Total_Revenue FROM sales;

SELECT SUM(Profit) AS Total_Profit FROM sales;

SELECT Region, SUM(Sales) AS Revenue_By_Region
FROM sales
GROUP BY Region;

SELECT "Sub-Category", SUM(Sales) AS Total_Sales
FROM sales
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC
LIMIT 3;