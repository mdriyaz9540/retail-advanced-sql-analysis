DROP TABLE IF EXISTS retail;
CREATE TABLE retail (
InvoiceNo VARCHAR(20),
StockCode VARCHAR(20),
Description TEXT,
Quantity INT,
InvoiceDate TIMESTAMP,
UnitPrice FLOAT,
CustomerID FLOAT,
Country VARCHAR(50)
);

select*from retail

SELECT ROUND(SUM(quantity * unitprice):: numeric, 2) AS total_revenue
FROM retail;

SELECT description,sum(quantity*unitprice) as total_revenue
from retail
group by description 
order by total_revenue desc
limit 10


Select customerid,sum(quantity*unitprice) as total_spending
from retail 
where customerid is not null
group by customerid
order by total_spending desc
limit 5

select country ,sum(quantity*unitprice) as Revenue,
count(invoiceno) as total_orders
from retail
group by country



SELECT 
DATE_TRUNC('month', invoicedate) AS month,
SUM(quantity * unitprice) AS revenue
FROM retail
GROUP BY month
ORDER BY month;

select description,sum(quantity) as total_quatity_sold
from retail
where description is not null
group by description
order by total_quatity_sold desc

select customerid,count(distinct invoiceno)as total_orders
from retail
where customerid is not null
group by customerid
having count(distinct invoiceno)>10

Select (total_revenue/total_orders) as avg_order_value
from(select sum(quantity*unitprice)as total_revenue,
count(distinct invoiceno)as total_orders
from retail) as sub;

SELECT country, description, total_revenue, rank
FROM (
    SELECT country,
           description,
           SUM(quantity * unitprice) AS total_revenue,
           ROW_NUMBER() OVER (PARTITION BY country ORDER BY SUM(quantity * unitprice) DESC) AS rank
    FROM retail
    WHERE description IS NOT NULL
    GROUP BY country, description
) AS ranked
WHERE rank = 1;

SELECT customerid,
       COUNT(DISTINCT invoiceno) AS total_orders,
       SUM(quantity * unitprice) AS total_revenue
FROM retail
WHERE customerid IS NOT NULL
GROUP BY customerid
ORDER BY total_revenue DESC
LIMIT 10;
