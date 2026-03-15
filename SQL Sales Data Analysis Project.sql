use sales
select * from sales_data
select * from product_data
select * from date_table
select * from customer_data

-- 1.SHOW ALL THE REOCORDS FROM THE SALES DATA
select * from sales_data

-- 2.SHOW ALL THE CUSTOMER FROM THE SPECIFIC REGION.
select * from customer_data
where Region ='North';

-- 3.DISPLAY ALL PRODUCT_NAME,CATEGORY,PRICE .
select Product_Name,Category,Price from product_data

-- 4.FIND THE TOTAL SALES AMOUNT 
select sum(sales_amount) as Total_sales from sales_data

-- 5.FIND THE TOTAL QUANTITY.
select sum(Quantity) from sales_data

-- 6. FIND THE TOTAL SALES EACH CUSTOMER 
select  Customer_ID,sum(Sales_Amount) from sales_data
Group by Customer_ID;

-- 7.CALCULATE THE TOTAL REVENUE PER PRODUCT
select Product_ID,sum(Quantity * Sales_Amount) as total_revenue
from sales_data
group by Product_ID

-- 8.GET THE TOP 3 HIGHEST SALES 
select * from sales_data
order by sales_Amount desc
LIMIT 3 

-- 9.SHOW THE SALES AMOUNT WITH THE CUSTOMER NAME 
Select s.Order_ID, c.Customer_Name, s.Sales_Amount
from Sales_Data s
join Customer_Data c
On s.Customer_ID = c.Customer_ID; 

-- 10.SHOW THE SALES WITH PRODUCT NAME 
select s.Order_ID, p.Product_ID,p.Product_Name from sales_data s
join product_data p
on s.Product_ID =p.Product_ID;

-- 11.SHOW THE SALES WITH PRODUCT CATEGORY
select s.Order_ID, p.Category, s.Sales_Amount
from sales_data s
join product_data p
on s.Product_ID = p.Product_ID;

-- 12.  FIND THE SALES BY CATEGORY
Select p.Category, SUM(s.sales_Amount) AS Total_Sales
from sales_data s
join product_data p
on s.Product_ID = p.Product_ID
group by p.Category;

-- 13.FIND THE HIGHEST SALES ORDER
select * from sales_data
order by Sales_Amount desc
limit 1

-- 14.FIND THE TOP REGION SALES AMOUNT    
select c.Region, sum(s.Sales_Amount) as Total_sales
from sales_data s
join customer_data c
on s.Customer_ID =c.Customer_ID
group by c.Region
order by Total_sales desc

-- 15.NUMBER OF CUSTOMER BY THE REGION
select Region, COUNT(Customer_ID) AS Total_Customers
FROM customer_data
GROUP BY Region;

-- 16.FIND THE YEARLY SALES.
Select Order_Date, SUM(Sales_Amount) AS YEARLY_SALES
from  sales_data
GROUP BY Order_Date;






