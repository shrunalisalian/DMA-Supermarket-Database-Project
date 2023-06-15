/* Project Data */
/* TABLES TO BE CREATED*/
select * from Project_Data.Customer;/*user_id,user_name,user_PhoneNo,user_email,user_Gender,user_DoB*/
select * from Project_Data.Customer_Address;/*user_id,Apt_no,Street_name,City,State,Zipcode*/
select * from Project_Data.Customer_Payment;/*user_id,Credit_Card_No,CVV,Expiry_date*/
select * from Project_Data.Product;/*prod_id,prod_type,prod_name,prod_price,prod_Expiry_date,prod_quantity*/
select * from Project_Data.Employee;/*emp_id,emp_Jobtype,emp_Name,emp_DoB,emp_joindate,emp_email,emp_address,emp_phone*/
select * from Project_Data.Retail_Store;/*RS_ID,num_emp,RS_phone,RS_address*/
select * from Project_Data.Final_Order;/*finorder_id,finorder_totalprice,finorder_numbofitems,finorder_type,user_id*/
select * from Project_Data.Order_Product;/*finorder_id,prod_id*/
select * from Project_Data.Warehouse;/*WH_ID,Wh_Name,WH_Phone,WH_Address*/
select * from Project_Data.Online_Order;/*tracking_id,delivery_date,delivery_type,finorder_id*/
select * from Project_Data.Order_Pickup;/*counter_no,pickup_datetime,finorder_id,RS_ID*/
select * from Project_Data.Delivery_Order;/*tracking_id,delivered_by,delivered_to*/
select * from Project_Data.Manager;/*emp_id,RS_ID*/
select * from Project_Data.Retail_Store_Worker;/*emp_id,RS_ID*/
select * from Project_Data.User_Retail_Store;/*user_id,RS_ID*/
select * from Project_Data.Warehouse_Delivery_Associate;/*emp_id,WH_ID,DA_vehicle,DA_vehicle_ID*/
select * from Project_Data.Warehouse_Worker;/*emp_id,WH_ID,WH_aisles_managed*/
select * from Project_Data.Warehouse_Order;/*finorder_id,WH_ID*/
select * from Project_Data.Warehouse_RetailStore;/*RS_ID,WH_ID*/
/*ADD CONSTRAINTS*/



create table Project_Data.Customer (
	user_id int not null primary key,
    user_name varchar(50),
    user_PhoneNo varchar(50),
    user_email varchar(50),
    user_Gender varchar(50),
    user_DoB DATE);
    
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456789','Sam','617-935-8233','sam@hotmail.com','F','1899-04-12');
select * from Project_Data.Customer;
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456766','John George','617-935-8231','john@hotmail.com','M','1891-04-12');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456767','Annie Jin','617-935-8234','annie@hotmail.com','F','1892-04-12');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456768','Mohit Rai','617-935-8235','mohit@hotmail.com','M','1992-04-12');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456784','Radha Swaminathan','617-935-8236','radha@hotmail.com','F','1991-04-12');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456785','Vanessa Bryant','617-935-8237','vanessa@hotmail.com','F','1992-04-11');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456786','Kobe Bryant','617-935-8238','kobe@hotmail.com','M','1899-04-01');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456787','Leo Messi','617-935-8239','leo@hotmail.com','M','1992-04-02');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456788','Neymar Jr','617-935-8230','neymar@hotmail.com','M','1992-10-12');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456780','Cristiano Ronaldo','617-935-8240','cristiano@hotmail.com','M','1899-11-12');
insert into Project_Data.Customer (user_id, user_name,user_PhoneNo,user_email,user_Gender,user_DoB) 
values ('123456782','Mbappe','617-935-8241','mbappe@hotmail.com','M','1992-08-23');

-- select * from DMA_Project_1.Registered_User_Address;/*user_ID,Apt_no,Street_name,City,State,Zipcode*/

create table Project_Data.Customer_Address(
	user_id int not null,
    Apt_no varchar(50),
    Street_name varchar(50),
    City varchar(50),
    State varchar(50),
    Zipcode varchar(50) not null,
    primary key (user_id,zipcode),
    foreign key (user_id) references Project_Data.Customer(user_id));
    
    
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456789','1','Park Drive','Boston','MA','02215');
select * from Project_Data.Customer_Address;
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456766','2','Mission Hill','California','CA','02214');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456767','3','Mission Drive','Minnisotta','MN','02213');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456768','78','Mission Main','Chicago','IL','02212');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456784','12',' Roxbury','New York','NY','02211');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456785','10','New England','Boston','MA','02210');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456786','7','South Huntington Ave','Texas','TX','09215');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456787','23','Huntington Ave','Phoenix','AZ','08215');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456788','8','New Jersey','Miami','FL','07215');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456780','9',' Hay Market','Virginia','VR','06215');
insert into Project_Data.Customer_Address(user_id,Apt_no,Street_name,City,State,Zipcode) 
values('123456782','16','Symphony','Boston','MA','05215');

-- select * from DMA_Project_1.Registered_User_Payment;/*user_ID,Card_no,CVV,Expiry_date*/
create table Project_Data.Customer_Payment(
	user_id int not null,
    Credit_Card_No varchar(50) not null,
    CVV int,
    Expiry_date Date,
    primary key (user_id,Credit_Card_No),
    foreign key (user_id) references Project_Data.Customer(user_id));
    
select * from Project_Data.Customer_Payment;
drop table Project_Data.Customer_Payment;
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456789','1234123412341234','010','2024-10-29');
select * from Project_Data.Customer_Payment;
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456766','1234123412340001','011','2024-10-29');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456767','1234123412340002','012','2025-11-30');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456768','1234123412340003','013','2026-12-28');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456780','1234123412340004','014','2027-01-27');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456782','1234123412340005','015','2028-02-26');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456784','1234123412340006','016','2029-03-25');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456785','1234123412340007','017','2023-04-24');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456786','1234123412340008','018','2024-05-23');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456787','1234123412340009','019','2023-06-22');
insert into Project_Data.Customer_Payment(user_id,Credit_Card_No,CVV,Expiry_date) 
values('123456788','1234123412340010','020','2024-10-21');

-- select * from DMA_Project_1.Product;/*prod_ID,prod_name,prod_price,prod_Expiry_date,prod_quantity*/
create table Project_Data.Product(
	prod_id int not null primary key,
    prod_type varchar(50),
    prod_name varchar(50),
    prod_price float,
    prod_Expiry_date date,
    prod_quantity float);
    


insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('164902675', 'Electronics', 'JBL charger','475.07', '2033-04-28', 4);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987654321' , 'Kids' , 'Story Book', '100', NULL ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('287654321' , 'Womens Fashion' , 'Yellow Dress', '1000', NULL ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987054321' , 'Grocery' , 'Milk', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987054301' , 'Deli(meat)' , 'Chicken thighs', '15', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987004321' , 'Grocery' , 'Apples', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987059321' , 'Grocery' , 'Oranges', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('917054321' , 'Grocery' , 'Spinach', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('927054321' , 'Grocery' , 'Celery', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('937054321' , 'Grocery' , 'Yogurt', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('947054321' , 'Grocery' , 'Watermelon', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('957054321' , 'Deli(meat)' , 'Chicken Breasts', '10', '2022-11-21' ,1000);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('967054321' , 'Deli(seafood)' , 'Lobster', '15', '2022-11-21' ,3000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('977054321' , 'Deli(seafood)' , 'Shrimp', '25', '2022-11-21' ,2000);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('997054321' , 'Deli(seafood)' , 'Salmon', '20', '2022-11-21' ,3000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('922054321' , 'Deli(seafood)' , 'Cod', '30', '2022-11-21' ,300);
/************************/

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('163902675', 'Electronics', 'Bose charger','425.07', '2033-04-28', 40);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('937654001' , 'Kids' , 'Story Book', '100', NULL ,800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('287654002' , 'Womens Fashion' , 'Yellow Pants', '1500', NULL ,1800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987054003' , 'Grocery' , 'Almond Milk', '15', '2022-11-21' ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987054002' , 'Deli(meat)' , 'Chicken thighs', '15', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987004003' , 'Grocery' , 'Apples', '15', '2022-11-21' ,1300);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987059002' , 'Grocery' , 'Oranges', '12', '2022-11-21' ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('917054006' , 'Grocery' , 'Spinach', '15', '2022-11-21' ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('927054110' , 'Grocery' , 'Celery', '15', '2022-11-21' ,100);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('937054900' , 'Grocery' , 'Yogurt', '10', '2022-11-21' ,700);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('947054500' , 'Grocery' , 'Watermelon', '10', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('957054007' , 'Deli(meat)' , 'Chicken Breasts', '20', '2022-11-21' ,100);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('967054400' , 'Deli(seafood)' , 'Lobster', '25', '2022-11-21' ,300);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('977054009' , 'Deli(seafood)' , 'Shrimp', '15', '2022-11-21' ,200);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('997054006' , 'Deli(seafood)' , 'Salmon', '26', '2022-11-21' ,300);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('922054311' , 'Deli(seafood)' , 'Cod', '34', '2022-11-21' ,3000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('937054001' , 'Kids' , 'Barbie Toy', '40', NULL ,8000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('287654003' , 'Mens Fashion' , 'Yellow Shirt', '1500', NULL ,1800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('937654004' , 'Kids' , 'Hamleys toy', '150', NULL ,8000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('287654006' , 'Womens Fashion' , 'Pink Dress', '1500', NULL ,1800);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('937654007' , 'Kids' , 'Story Book', '100', NULL ,800);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('287654008' , 'Womens Fashion' , 'Yellow Pants', '500', NULL ,1800);

/****************************/
insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('837054001' , 'Kids' , 'Boys Shoes', '40', NULL ,800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('887654003' , 'Mens Fashion' , 'Yellow tshirt', '100', NULL ,1800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('837654004' , 'Kids' , 'Race car toy', '100', NULL ,800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('887654006' , 'Womens Fashion' , 'Blue Dress', '150', NULL ,1800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('837654007' , 'Kids' , 'Story Book', '100', NULL ,8090);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('887654008' , 'Womens Fashion' , 'Lilac Pants', '5000', NULL ,1800);
/**************************************/

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('807054001' , 'Kids' , 'Boys shirt', '410', NULL ,800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('807654003' , 'Mens Fashion' , 'Blue shoe', '170', NULL ,1800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('807654004' , 'Kids' , 'Toy House', '200', NULL ,800);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('807654006' , 'Womens Fashion' , 'Blue Heels', '150', NULL ,1800);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('807654007' , 'Kids' , 'Story Book', '100', NULL ,8090);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('807654008' , 'Womens Fashion' , 'Neon Pants', '5000', NULL ,1800);

/***********************************/
insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('164900675', 'Electronics', 'Apple charger','875.07', '2033-04-28', 40);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987654371' , 'Kids' , 'Story Book', '100', NULL ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('287654391' , 'Womens Fashion' , 'Yellow Dress', '1000', NULL ,100);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987054391' , 'Grocery' , 'Milk', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('987084301' , 'Deli(meat)' , 'Chicken thighs', '15', '2022-11-21' ,1000);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('984000321' , 'Grocery' , 'Apples', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('982229321' , 'Grocery' , 'Oranges', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('913334321' , 'Grocery' , 'Spinach', '5', '2022-11-21' ,1000);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('920004321' , 'Grocery' , 'Celery', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('936664321' , 'Grocery' , 'Yogurt', '5', '2022-11-21' ,1000);

insert into Project_Data.Product( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('947888321' , 'Grocery' , 'Watermelon', '5', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('957000321' , 'Deli(meat)' , 'Chicken Breasts', '10', '2022-11-21' ,1000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('967555321' , 'Deli(seafood)' , 'Lobster', '15', '2022-11-21' ,3000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('977111321' , 'Deli(seafood)' , 'Shrimp', '25', '2022-11-21' ,2000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('997444321' , 'Deli(seafood)' , 'Salmon', '20', '2022-11-21' ,3000);

insert into Project_Data.Product ( prod_ID, prod_type, prod_name, prod_price, prod_Expiry_date, prod_quantity)
values ('922666321' , 'Deli(seafood)' , 'Cod', '30', '2022-11-21' ,300);
/***************************/

select * from Project_Data.Product ;
-- select * from DMA_Project_1.Final_Order;/*finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID*/
create table Project_Data.Final_Order(
	finorder_id varchar(50) not null,
    finorder_totalprice float,
    finorder_numbofitems int,
    finorder_type varchar(50),
    user_id int,
    primary key (finorder_id),
	foreign key (user_id) references Project_Data.Customer(user_id));
    
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234567', '300','10','Pick Up','123456789');

select * from Project_Data.Final_Order;

insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234577', '300','10','Pick Up','123456766');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234568', '100','8','Delivery','123456767');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234569', '459','9','Pick Up','123456768');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234570', '676','13','Delivery','123456780');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234571', '132','17','Pick Up','123456782');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234572', '982','7','Delivery','123456784');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234573', '429','5','Pick Up','123456785');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234574', '565','6','Delivery','123456786');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234575', '78','3','Pick Up','123456787');
insert into Project_Data.Final_Order(finorder_ID,finorder_totalprice,finorder_numbofitems,finorder_type,user_ID)
values ('10-1234576', '49','1','Delivery','123456788');

-- select * from DMA_Project_1.Order_Product;/*finorder_ID,prod_ID*/
create table Project_Data.Order_Product(
	finorder_ID varchar(50) not null,
    prod_id int not null,
    primary key (finorder_id, prod_id),
    foreign key (finorder_id) references Project_Data.Final_Order(finorder_ID),
	foreign key (prod_id) references Project_Data.Customer(user_id));

drop table Project_Data.Order_Product;
create table Project_Data.Order_Product(
	finorder_ID varchar(50) not null,
    prod_id int not null,
    primary key (finorder_id, prod_id),
    foreign key (finorder_id) references Project_Data.Final_Order(finorder_ID),
	foreign key (prod_id) references Project_Data.Product(prod_id));
    
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234577','164902675');

select * from Project_Data.Order_Product;
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','987654321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','807054001');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','807654003');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','807654004');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','807654006');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','807654007');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234567','807654008');
/*********/

insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','287654321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','164900675');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','987654371');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','287654391');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','987084301');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','984000321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234568','913334321');


insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234570','987054301');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234571','987004321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234572','917054321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234573','927054321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234574','937054321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234575','947054321');
insert into Project_Data.Order_Product(finorder_id,prod_id)values('10-1234576','957054321');

-- select * from DMA_Project_1.Retail_Store;/*RS_ID,num_emp,RS_phone,RS_address*/

create table Project_Data.Retail_Store (
	RS_ID varchar(50) not null primary key,
    num_emp int,
    RS_phone varchar(10),
    RS_address varchar(50));
    
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234567','10','6179878008','Vermount');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234577','15','6179878007','New Hampshire');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234587','20','6179878006','New England');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234597','20','6179878000','Coventry');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234566','10','6179878001','Chicago');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234565','10','6179878002','New Jersey');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234564','50','6179878003','San Jose');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234563','30','6179878004','Arlington');
insert into Project_Data.Retail_Store (RS_ID,num_emp,RS_phone,RS_address) values('RS1234562','20','6179878005','Boston');

select * from Project_Data.Retail_Store;

-- select * from DMA_Project_1.Online_Order;/*tracking_ID,delivery_date,delivery_type,finorder_ID*/

create table Project_Data.Online_Order(
	tracking_id varchar(50) not null primary key,
    delivery_date date,
    delivery_type varchar(50),
    finorder_id varchar(50),
    foreign key (finorder_id) references Project_Data.Final_Order(finorder_id));

-- insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) values('S12345','2022-11-25','Standard','10-1234577');
insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) 
values('E12345','2022-11-25','Express','10-1234568');
-- insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) values('S12344','2022-11-25','Standard','10-1234569');
insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) 
values('E12344','2022-11-25','Express','10-1234570');
-- insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) values('S12343','2022-11-25','Standard','10-1234571');
insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) 
values('E12343','2022-11-25','Express','10-1234572');
-- insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) values('S12342','2022-11-25','Standard','10-1234573');
insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) 
values('E12342','2022-11-25','Express','10-1234574');
-- insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) values('S12341','2022-11-25','Standard','10-1234575');
insert into Project_Data.Online_Order(tracking_id,delivery_date,delivery_type,finorder_id) 
values('E12341','2022-11-25','Express','10-1234576');

delete from Project_Data.Online_Order where finorder_id = '10-1234575';
delete from Project_Data.Online_Order where finorder_id = '10-1234571';
delete from Project_Data.Online_Order where finorder_id = '10-1234573';
delete from Project_Data.Online_Order where finorder_id = '10-1234577';
delete from Project_Data.Online_Order where finorder_id = '10-1234569';


select * from Project_Data.Online_Order;
select * from Project_Data.Final_Order where finorder_type like '%delivery%';

-- select * from DMA_Project_1.Employee;/*emp_ID,emp_Jobtype,emp_Name,emp_DoB,emp_joindate,emp_email,emp_address,emp_phone*/

create table Project_Data.Employee(
	emp_id varchar(50) not null primary key,
    emp_Jobtype varchar(50),
    emp_Name varchar(50)not null,
    emp_DoB date,
    emp_joindate date not null,
    emp_email varchar(50),
    emp_address varchar(50),
    emp_phone varchar(50));

insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('22-6241007', 'Retail Store Worker', 'Tonya Pervew', '1959-12-17', '2018-02-21', 'tpervew0@epa.gov', 'Schlimgen', '416-772-0635');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('34-3523921', 'Warehouse Worker', 'Lancelot Snellman', '1999-09-11', '2001-05-25', 'lsnellman1@narod.ru', 'Ohio', '230-255-1626');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('99-6045731', 'Manager', 'Bank Jury', '1978-12-22', '2016-05-02', 'bjury2@etsy.com', 'Mendota', '553-687-4164');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('11-0679387', 'Retail Store Worker', 'Inigo MacArte', '1995-11-02', '2001-08-31', 'imacarte3@amazon.co.jp', 'Debra', '771-951-9841');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('79-3816664', 'Manager', 'Stanley Babbe', '1974-07-11', '2020-09-21', 'sbabbe4@miitbeian.gov.cn', 'Harper', '672-782-4159');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('73-3932391', 'Retail Store Worker', 'Mozes Gouldeby', '1993-05-28', '2018-04-19', 'mgouldeby5@imgur.com', 'Spenser', '376-263-2581');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('47-2650313', 'Warehouse Worker', 'Harold Danher', '1988-11-28', '2013-01-01', 'hdanher6@imdb.com', 'Coleman', '983-836-1921');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('05-7202635', 'Manager', 'Chrysler Pavel', '1960-03-21', '2003-10-11', 'cpavel7@wp.com', 'Mayer', '109-530-4471');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('08-2128881', 'Retail Store Worker', 'Jason Begbie', '1985-03-26', '2007-10-11', 'jbegbie8@tripadvisor.com', 'Longview', '586-456-4012');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('28-7601929', 'Retail Store Worker', 'Clayborne Safont', '1975-09-18', '2011-06-17', 'csafont9@feedburner.com', 'Arizona', '404-231-5823');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('61-5243086', 'Delivery Associate', 'Joellen Kleis', '1976-08-12', '2001-06-12', 'jkleisa@ovh.net', 'Darwin', '810-741-3560');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('79-3645974', 'Delivery Associate', 'Alfredo Conradsen', '1998-08-02', '2008-05-18', 'aconradsenb@indiegogo.com', 'Schiller', '716-180-5849');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('12-1079056', 'Retail Store Worker', 'Virginia Losselyong', '2003-03-25', '2016-01-13', 'vlosselyongc@businessweek.com', 'Hazelcrest', '696-568-1742');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('01-9347914', 'Warehouse Worker', 'Gabby Bythell', '1978-02-13', '2010-11-28', 'gbythelld@gmpg.org', 'Susan', '625-644-3388');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('09-0776759', 'Delivery Associate', 'Welsh Batrip', '2003-05-06', '2008-04-29', 'wbatripe@cyberchimps.com', 'Dorton', '523-952-8678');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('07-9139128', 'Delivery Associate', 'Ian Galvin', '1971-08-27', '2021-02-22', 'igalvinf@tmall.com', 'Mcbride', '331-677-1903');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('73-8036591', 'Retail Store Worker', 'Rodolphe Holtom', '1960-03-23', '2018-08-21', 'rholtomg@bloglovin.com', 'Summer Ridge', '212-861-2740');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('35-4364514', 'Warehouse Worker', 'Rene Aubray', '1999-02-10', '2021-07-15', 'raubrayh@shinystat.com', 'Dorton', '909-418-3494');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('95-1766991', 'Retail Store Worker', 'Marcellus Ramos', '1973-04-26', '2002-04-15', 'mramosi@over-blog.com', 'Longview', '865-647-8409');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('38-4514459', 'Retail Store Worker', 'Olivette Furness', '1973-05-09', '2005-07-15', 'ofurnessj@odnoklassniki.ru', 'Bunker Hill', '979-805-6430');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('34-5817603', 'Manager', 'Krystal Sharpless', '1964-12-21', '2012-11-27', 'ksharplessk@pbs.org', 'Elmside', '225-889-7515');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('61-5603089', 'Warehouse Worker', 'Troy Bratten', '1997-12-15', '2002-08-13', 'tbrattenl@state.gov', 'Badeau', '205-891-4098');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('65-1338918', 'Delivery Associate', 'Francoise McTague', '1965-07-14', '2019-03-17', 'fmctaguem@dedecms.com', 'Walton', '954-420-8870');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('25-8609610', 'Warehouse Worker', 'Dionne Phillpotts', '1994-08-05', '2005-01-24', 'dphillpottsn@behance.net', 'Nevada', '498-743-4653');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('70-0519549', 'Retail Store Worker', 'Grace Ivanitsa', '1988-04-08', '2001-04-04', 'givanitsao@1688.com', 'Warner', '600-122-9372');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('71-2326794', 'Retail Store Worker', 'Richmound Huzzey', '2004-03-21', '2014-07-17', 'rhuzzeyp@yale.edu', 'Golf Course', '546-115-2386');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('85-5464492', 'Delivery Associate', 'Dana Delmonti', '2000-07-05', '2001-04-15', 'ddelmontiq@zdnet.com', 'Sutteridge', '782-488-6237');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('51-5364115', 'Retail Store Worker', 'Kristy Prandini', '1974-07-10', '2015-01-28', 'kprandinir@vistaprint.com', 'Shopko', '554-875-7294');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('01-4510301', 'Warehouse Worker', 'Genvieve Beaby', '1968-07-06', '2004-09-25', 'gbeabys@cnn.com', 'Northview', '495-324-8044');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('55-2220450', 'Warehouse Worker', 'Pablo Illwell', '1995-09-13', '2008-11-02', 'pillwellt@sun.com', 'Heath', '677-325-4441');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('12-9512683', 'Delivery Associate', 'Allister Burless', '1972-07-21', '2006-09-15', 'aburlessu@ed.gov', 'Hallows', '784-366-1803');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('31-2314802', 'Warehouse Worker', 'Othilia Cleminshaw', '1982-05-31', '2018-10-10', 'ocleminshawv@wikimedia.org', 'Bashford', '736-352-1407');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('53-8514618', 'Retail Store Worker', 'Griffie Sambells', '1995-11-02', '2010-05-22', 'gsambellsw@rambler.ru', 'Quincy', '497-588-0071');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('28-5162274', 'Retail Store Worker', 'Roderick Fritter', '1996-11-20', '2011-09-16', 'rfritterx@a8.net', 'Delladonna', '749-122-8515');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('42-3038391', 'Manager', 'Mar Comford', '1965-11-24', '2020-09-24', 'mcomfordy@archive.org', 'Dawn', '958-892-0634');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('70-3509500', 'Warehouse Worker', 'Garrik Pinch', '1961-07-29', '2022-04-23', 'gpinchz@amazon.com', 'Anthes', '628-664-3299');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('57-9637696', 'Manager', 'Susann Castellone', '1960-12-09', '2003-04-17', 'scastellone10@toplist.cz', 'Monument', '283-223-1374');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('61-6468042', 'Warehouse Worker', 'Vinny Quincey', '1978-07-25', '2001-01-23', 'vquincey11@chronoengine.com', 'Farwell', '624-370-6986');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('04-2089877', 'Delivery Associate', 'Romola Bissiker', '1988-10-01', '2011-08-05', 'rbissiker12@unblog.fr', 'Shopko', '296-268-5120');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('02-4270379', 'Manager', 'Bone McMullen', '1991-11-06', '2013-10-25', 'bmcmullen13@comcast.net', 'Main', '269-676-1505');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('91-0838196', 'Delivery Associate', 'Kathryn Flintiff', '1987-05-17', '2011-03-26', 'kflintiff14@timesonline.co.uk', 'Melrose', '701-265-7791');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('75-3267476', 'Retail Store Worker', 'Harri Joska', '2004-08-04', '2007-08-11', 'hjoska15@google.it', 'Hovde', '105-409-4859');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('88-1982290', 'Manager', 'Bo Wake', '2005-03-07', '2010-10-15', 'bwake16@amazonaws.com', 'North', '805-347-5145');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('22-1770331', 'Manager', 'Stanwood Mulryan', '1960-07-28', '2015-07-04', 'smulryan17@bbc.co.uk', 'Meadow Ridge', '171-969-1172');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('87-9788088', 'Warehouse Worker', 'Goldarina Woolger', '1996-02-17', '2017-08-11', 'gwoolger18@acquirethisname.com', 'Becker', '145-417-5110');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('33-3782055', 'Retail Store Worker', 'Isis Ravelus', '1975-08-12', '2011-10-30', 'iravelus19@naver.com', 'Welch', '331-515-7472');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('66-0405047', 'Manager', 'Kimmie Kilbourne', '1993-07-27', '2016-03-05', 'kkilbourne1a@tumblr.com', 'Burrows', '177-499-3018');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('24-5488212', 'Manager', 'Vera Roblett', '1964-02-08', '2018-06-25', 'vroblett1b@opera.com', 'Holy Cross', '261-201-6233');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('55-8573173', 'Warehouse Worker', 'Anatola Whorall', '1971-02-01', '2018-09-29', 'awhorall1c@wisc.edu', 'Bartillon', '701-145-8626');
insert into Project_Data.Employee (emp_ID, emp_Jobtype, emp_Name, emp_DoB, emp_joindate, emp_email, emp_address, emp_phone) values ('21-8009959', 'Delivery Associate', 'Eolande Brashaw', '1987-06-09', '2002-07-23', 'ebrashaw1d@devhub.com', 'Hooker', '768-408-3076');

select * from Project_Data.Employee;

-- select * from DMA_Project_1.Order_Pickup;/*counter_number,pickup_date,pickup_time,finorder_ID,RS_ID*/
create table Project_Data.Order_Pickup(
	counter_no varchar(10),
    pickup_datetime datetime not null,
    finorder_id varchar(50)not null,
    RS_ID varchar(50)not null,
    primary key (RS_ID,finorder_id),
    foreign key (RS_ID) references Project_Data.Retail_Store(RS_ID),
	foreign key (finorder_id) references Project_Data.Final_Order(finorder_id));

insert into Project_Data.Order_Pickup(counter_no,pickup_datetime,finorder_id,RS_ID) 
values('C1','2022-11-25 09:30:00','10-1234577','RS1234567');

insert into Project_Data.Order_Pickup(counter_no,pickup_datetime,finorder_id,RS_ID) 
values('C1','2022-11-24 09:30:00','10-1234575','RS1234562');
insert into Project_Data.Order_Pickup(counter_no,pickup_datetime,finorder_id,RS_ID) 
values('C2','2022-11-26 09:30:00','10-1234573','RS1234563');
insert into Project_Data.Order_Pickup(counter_no,pickup_datetime,finorder_id,RS_ID) 
values('C3','2022-11-27 10:30:00','10-1234571','RS1234564');
insert into Project_Data.Order_Pickup(counter_no,pickup_datetime,finorder_id,RS_ID) 
values('C5','2022-11-28 11:30:00','10-1234569','RS1234565');
insert into Project_Data.Order_Pickup(counter_no,pickup_datetime,finorder_id,RS_ID) 
values('C4','2022-11-29 12:30:00','10-1234567','RS1234566');
/* pick up should have only pick up finorder ids and not delivery ids*/
select * from Project_Data.Order_Pickup;
select * from Project_Data.Final_Order where finorder_type like '%delivery%';

-- select * from DMA_Project_1.Retail_Store_Worker;/*emp_ID,RS_ID*/
create table Project_Data.Retail_Store_Worker(
	emp_id varchar(50),
    RS_ID varchar(50),
    primary key (emp_id,RS_ID),
    foreign key (emp_id) references Project_Data.Employee(emp_id),
    foreign key (RS_ID) references Project_Data.Retail_Store(RS_ID));

insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('21-8009959', 'RS1234562');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('34-3523921', 'RS1234562');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('99-6045731', 'RS1234562');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('11-0679387', 'RS1234562');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('79-3816664', 'RS1234562');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('73-3932391', 'RS1234562');

insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('55-8573173', 'RS1234563');

insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('24-5488212', 'RS1234564');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('66-0405047', 'RS1234565');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('33-3782055', 'RS1234566');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('87-9788088', 'RS1234567');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('22-1770331', 'RS1234577');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('88-1982290', 'RS1234587');
insert into Project_Data.Retail_Store_Worker(emp_id,RS_ID) values('75-3267476', 'RS1234597');



-- select * from DMA_Project_1.User_Retail_Store;/*RS_ID,user_ID*/
create table Project_Data.User_Retail_Store(
	user_id int not null,
    RS_ID varchar(50) not null,
    primary key (user_id,RS_ID),
	foreign key (user_id) references Project_Data.Customer(user_id),
    foreign key (RS_ID) references Project_Data.Retail_Store (RS_ID));
    
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456789','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456766','RS1234563');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456767','RS1234564');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456768','RS1234565');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456780','RS1234566');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456782','RS1234567');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456784','RS1234577');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456785','RS1234587');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456786','RS1234597');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456787','RS1234597');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456788','RS1234597');

select * from Project_Data.User_Retail_Store;
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456766','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456767','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456768','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456780','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456782','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456784','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456785','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456786','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456787','RS1234562');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456788','RS1234562');

insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456766','RS1234597');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456767','RS1234597');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456768','RS1234597');
insert into Project_Data.User_Retail_Store( user_id,RS_ID) values('123456780','RS1234597');

-- select * from DMA_Project_1.Warehouse;/*WH_ID,WH_Name,Wh_Phone,WH_address*/

create table Project_Data.Warehouse(
	WH_ID varchar(50) not null primary key,
    Wh_Name varchar(50) not null,
    WH_Phone varchar(12),
    WH_Address varchar(50));
    
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1234','FedX','617-987-9898','New Jersey');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1235','DHL','617-987-0001','New England');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1236','Garuda','617-987-0002','Kilimanjaro');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1237','Americold','617-987-0003','Boston');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1238','United','617-987-0004','San Jose');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1239','Southwest','617-987-0005','Santa Cruz');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1230','Delta','617-987-0006','Baltimore');
insert into Project_Data.Warehouse(WH_ID,WH_Name,WH_Phone,WH_Address) values('W1231','JetBlue','617-987-0007','Minnisota');

select * from Project_Data.Warehouse;

-- select * from DMA_Project_1.Warehouse_Delivery_Associate;/*WH_ID,emp_ID*/
-- select * from DMA_Project_1.Delivery_Associate;/*emp_ID,WH_ID,DA_vehicle,DA_vehicle_ID*/

create table Project_Data.Warehouse_Delivery_Associate(
	emp_id varchar(50) not null,
    WH_ID varchar(50) not null,
    DA_vehicle varchar(50),
    DA_vehicle_ID varchar(50),
    primary key(emp_id,WH_ID),
    foreign key (emp_id) references Project_Data.Employee(emp_id),
	foreign key (WH_ID) references Project_Data.Warehouse(WH_ID));
    
insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('04-2089877','W1230','Toyota Camry','5YJSA1DG9DFP14705');
/**/
insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('07-9139128','W1231','Jeep Wrangler','5YJSA1DG9DFP10001');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('09-0776759','W1234','Honda','5YJSA1DG9DFP10002');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('12-9512683','W1235','Toyota ','5YJSA1DG9DFP10003');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('21-8009959','W1236','Lexus','5YJSA1DG9DFP10004');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('61-5243086','W1237','Tesla','5YJSA1DG9DFP10005');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('65-1338918','W1238','Toyota','5YJSA1DG9DFP10006');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('79-3645974','W1238','Chevrolet','5YJSA1DG9DFP10007');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('85-5464492','W1239','Ford','5YJSA1DG9DFP10008');

insert into Project_Data.Warehouse_Delivery_Associate(emp_id,WH_ID,DA_vehicle,DA_vehicle_ID)
values('91-0838196','W1230','General Motors','5YJSA1DG9DFP10009');

select * from Project_Data.Employee where emp_Jobtype like '%delivery%';

select * from Project_Data.Warehouse_Delivery_Associate;

-- select * from DMA_Project_1.Delivery_Order;/*finorder_ID,picked_up_by*/

create table Project_Data.Delivery_Order(
	finorder_id varchar(50) not null,
    WH_ID varchar(50),
    RS_ID varchar(50),
    delivered_by varchar(50) not null,
    delivered_to varchar(50),
    primary key(finorder_id,delivered_by),
	foreign key (finorder_id) references Project_Data.Final_Order(finorder_id),
	foreign key(WH_ID) references Project_Data.Warehouse(WH_ID),
    foreign key(RS_ID) references Project_Data.Retail_Store(RS_ID),
    foreign key(delivered_by) references Project_Data.Warehouse_Delivery_Associate(emp_id));

select * from Project_Data.Final_Order where finorder_type = 'Delivery';
/*either WH_ID can be null or the RS_ID can be null, together they both cannot be null*/
/* finorder_id for delivered order should not be the finorder_id for pick up*/
/* Optional - all the orders from this particular warehouse this particular employee will deliver*/
insert into Project_Data.Delivery_Order(finorder_id,WH_ID,RS_ID,delivered_by,delivered_to) 
values('10-1234568','W1230',null,'91-0838196','Sameera Reddy');
select * from Project_Data.Delivery_Order;

-- select * from DMA_Project_1.Warehouse_Order;/*finorder_ID,WH_ID*/
create table Project_Data.Warehouse_Order(
	finorder_id varchar(50) not null,
    WH_ID varchar(50) not null,
    primary key (finorder_id,WH_ID) ,
	foreign key (finorder_id) references Project_Data.Final_Order(finorder_id),
	foreign key(WH_ID) references Project_Data.Warehouse(WH_ID));

/* data redundancy*/
drop table Project_Data.Delivery_Order;
-- select * from DMA_Project_1.Delivery_Order;/*finorder_ID,picked_up_by*/ add tracking id

create table Project_Data.Delivery_Order(
	tracking_id varchar(50) not null,
	finorder_id varchar(50) not null,
    delivered_by varchar(50) not null,
    delivered_to varchar(50),
    primary key(tracking_id,finorder_id),
    foreign key (tracking_id) references Project_Data.Online_Order(tracking_id),
	foreign key (finorder_id) references Project_Data.Final_Order(finorder_id),
    foreign key(delivered_by) references Project_Data.Warehouse_Delivery_Associate(emp_id));
    
-- insert into Project_Data.Delivery_Order(tracking_id,finorder_id,delivered_by,delivered_to)values('E12341','

select * from Project_Data.Online_Order;
select * from Project_Data.Warehouse_Delivery_Associate;
drop table Project_Data.Delivery_Order;

create table Project_Data.Delivery_Order(
	tracking_id varchar(50) not null,
    delivered_by varchar(50) not null,
    delivered_to varchar(50),
    primary key(tracking_id),
    foreign key (tracking_id) references Project_Data.Online_Order(tracking_id),
    foreign key(delivered_by) references Project_Data.Warehouse_Delivery_Associate(emp_id));
    
insert into Project_Data.Delivery_Order(tracking_id,delivered_by,delivered_to)values('E12341','07-9139128','Penny');
select * from  Project_Data.Delivery_Order;

-- select * from DMA_Project_1.Warehouse_RetailStore;/*RS_ID,WH_ID*/
create table Project_Data.Warehouse_RetailStore(
	RS_ID varchar(50) not null,
    WH_ID varchar(50) not null,
    primary key(RS_ID,WH_ID),
    foreign key (RS_ID) references Project_Data.Retail_Store(RS_ID),
    foreign key(WH_ID) references Project_Data.Warehouse(WH_ID));
    
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234562','W1230');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234563','W1231');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234564','W1238');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234565','W1239');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234566','W1234');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234567','W1235');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234577','W1236');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234587','W1237');

insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234562','W1231');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234562','W1234');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234562','W1235');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234562','W1236');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234562','W1237');

insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234563','W1234');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234563','W1235');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234563','W1236');
insert into Project_Data.Warehouse_RetailStore(RS_ID,WH_ID) values('RS1234563','W1237');

select * from Project_Data.Warehouse_RetailStore;

-- select * from DMA_Project_1.Warehouse_Worker;/*emp_ID,WH_ID,WH_WWaisles_managed*/
create table Project_Data.Warehouse_Worker(
	emp_id varchar(50) not null,
    WH_ID varchar(50) not null,
    WH_aisles_managed varchar(50),
    primary key(emp_id,WH_ID),
    foreign key(emp_id) references Project_Data.Employee(emp_id),
    foreign key(WH_ID) references Project_Data.Warehouse(WH_ID));
    
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('01-4510301','W1230','F1');

select * from Project_Data.Employee where emp_Jobtype like '%warehouse%';

insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('01-9347914','W1231','F1');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('25-8609610','W1234','F1');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('31-2314802','W1235','F3');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('34-3523921','W1236','F2');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('47-2650313','W1237','F1');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('55-8573173','W1238','F1');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('61-5603089','W1230','F4');
insert into Project_Data.Warehouse_Worker(emp_id,WH_ID,WH_aisles_managed) values('61-6468042','W1230','F5');

select * from Project_Data.Warehouse_Worker;
select * from Project_Data.Employee;
select * from Project_Data.Retail_Store;
-- select * from DMA_Project_1.Manager;/*emp_ID,RS_ID*/
create table Project_Data.Manager(
	emp_id varchar(50) not null,
    RS_ID varchar(50) not null,
    primary key(emp_id, RS_ID),
    foreign key(emp_id) references Project_Data.Employee(emp_id),
    foreign key(RS_ID) references Project_Data.Retail_Store(RS_ID));
    
insert into Project_Data.Manager(emp_id,RS_ID) values('02-4270379','RS1234562');
select * from Project_Data.Manager;


