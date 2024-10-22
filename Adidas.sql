SELECT * FROM adidas.adidas;

use adidas;
select * from adidas;
/* Q1) Total Sales by Retailer */

select ï»¿Retailer, sum(Total_Sales) 
from adidas
group by ï»¿Retailer
having sum(Total_Sales)
order by sum(Total_Sales) desc;

/* Q2) Average Price per unit by Product*/

select Product, avg(Price_per_Unit)
from adidas
group by Product
having avg(Price_per_unit)
order by avg(Price_Per_Unit) desc;

/* Q3) Sales Performance by Region*/

select Region, sum(Total_Sales)
from adidas
group by Region
having sum(Total_Sales)
order by sum(Total_Sales);

/* Q4) Top 5 Products by Units Sold */

select Product, sum(Units_Sold) 
from adidas
group by Product
having sum(Units_Sold)
order by sum(Units_Sold) desc
limit 5;


/* Q5) Operating Margin Analysis  */

select ï»¿Retailer , SUM(Operating_Margin) 
from adidas
group by ï»¿Retailer 
having SUM(Operating_Margin)  
order by sum(Operating_Profit) desc;


/* Q6) Count of Sales_Method */

select Sales_Method, count(Sales_Method) 
from adidas
group by Sales_Method
having count(Sales_Method)
order by count(Sales_Method) desc;

/* Q7) Product Performance Analysis */

SELECT 
Product, sum(Total_Sales) as Total_Sales, sum(Operating_Profit) as Total_Operating_Profit
from adidas
group by Product
order by Total_Sales desc; 
    
/* Q8) Profit Margin by State */

select State, avg(Profit_Margin) 
from adidas
group by State
having avg(Profit_Margin)
order by avg(Profit_Margin) desc;

/* Q9) Sales Distribution by City */

select City, sum(Total_Sales) 
from adidas
group by City
having sum(Total_Sales)
order by sum(Total_Sales) desc;

/* Q10) Comparision of Units Sold by Product */

select Product, sum(Total_Sales) 
from adidas
group by Product
having sum(Total_Sales)
order by sum(Total_Sales) desc;