/* Query 1
In a recent news it was said that there's swing flu in Colorado hence all meat products especially chicken  have 
been contaminated, hence the supermarket has decided to recall all the chicken  products sold to customers 
that came from Warehouse in Colorado. Retrieve the list of all the customers the supermarket should contact*/

select user_ID,user_name,user_PhoneNo,user_email
from DMA_Project_1.Registered_User2
where user_ID in(
				select user_ID from DMA_Project_1.Warehouse_Order as WO inner join DMA_Project_1.Final_Order as FO 
				where WO.finorder_ID = FO.finorder_ID and 
				WO.WH_ID in (select WH_ID from DMA_Project_1.Warehouse where WH_Name like "%colorado%") and 
				FO.finorder_ID in ( select finorder_ID from DMA_Project_1.Order_Product as OP inner join DMA_Project_1.Product as P
				where OP.prod_ID = P.prod_ID and P.prod_name like "%chicken%"));
                
/* Query 2
Registered user Samantha received her order however, there was one item missing in the order. She informed the 
customer care about the same. Retrieve the contact details of the warehouse the customer care should contact in
order to check about Samantha's order.*/ 

select * from DMA_Project_1.Warehouse 
where WH_ID in( 
				select WH_ID 
				from DMA_Project_1.Delivery_Associate 
				where finorder_ID in (
										select finorder_ID 
										from DMA_Project_1.Final_Order 
										where user_ID in (
															select user_ID 
															from DMA_Project_1.Registered_User2 
															where user_name like '%samantha%')));
                                                            
/* Query 3
The management wants to look at the inventory to evaluate the value of each product and product 
category to allocate proper inventory space
They ask us to calculate the worth of the inventory for each product as well as each product category*/

select 
	prod_type as "Product Type", 
    prod_name as "Product Name", 
    prod_price*prod_quantity as "Inventory Value" 
from DMA_Project_1.Product
order by prod_price*prod_quantity desc;

select 
	prod_type as "Product Category", 
    sum(prod_quantity) as "Total Quantity", 
    sum(prod_quantity) * sum(prod_price) as "Total Value" 
from DMA_Project_1.Product
group by prod_type
order by sum(prod_quantity) * sum(prod_price) desc;



/*Query 4*
Retrieve average age of employee based on their job type*/

select emp_jobtype, avg(age) from 
	(SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), emp_DoB)), '%Y') + 0 AS age 
    FROM DMA_Project_1.Employee e1) as t1
group by emp_Jobtype;



/* Query 5
Number of people who are choosing for 'pick up' or 'delivery' depending on the number of items they purchased*/
SELECT
    finorder_numbofitems,
    COUNT(IF(findorder_type = 'Standard', 1, NULL)) Delivery,
    COUNT(IF(findorder_type = 'PickUp', 1, NULL)) Pickup,
    COUNT(IF(findorder_type = 'Standard', 1, NULL))/COUNT(IF(findorder_type = 'PickUp', 1, NULL)) as ratio
FROM
    DMA_Project_1.Final_Order
group by finorder_numbofitems
order by finorder_numbofitems;

/* Query 6
retrieve the average amount spent by a customer at the supermarket
*/
Select 
case 
	when year(user_DoB) between 1945 and 1964 then "Baby Boom Generation"
	when year(user_DoB) between 1965 and 1980 then "Gen X" 
	when year(user_DoB) between 1981 and 1996 then "Millennial" 
	when year(user_DoB) between 1997 and 2010 then "Gen Z" 
    else "Silent Generation"
    
end as user_DoB , Avg(FO.finorder_totalprice) as Average_Money_Spent_Generation_wise
From DMA_Project_1.Registered_User2  as RU inner join DMA_Project_1.Final_Order_Data as FO
on FO.user_ID = RU.user_ID 
Group by 
		case 
			when year(user_DoB) between 1945 and 1964 then "Baby Boom Generation"
			when year(user_DoB) between 1965 and 1980 then "Gen X" 
			when year(user_DoB) between 1981 and 1996 then "Millennial" 
			when year(user_DoB) between 1997 and 2010 then "Gen Z" 
			else "Silent Generation"
		end
;

/* Query 7
Retrieve the list of products that will expire in the next 7 days
*/
select * from DMA_Project_1.Product where prod_expiry_date < date_add(now(), interval 7 day);

/* Query 8
Retrieve names of customers and their credit card information encrypted with only the last 4 digits 
un-encrypted
*/
Select ru.user_name, concat(repeat('*',length(rup.card_no)-4),
Substring(rup.card_no,-4)) as CreditCardNumber
From DMA_Project_1.Registered_User2 as ru
Inner join DMA_Project_1.Registered_User_Payment as rup using (user_ID);



