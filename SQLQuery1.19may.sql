select * from Tbl_Customer
select * from Tbl_Category
select * from Tbl_Products
select * from Tbl_Orders
select * from Tbl_Reviews
select * from Tbl_Payments
select * from Tbl_Cart




truncate table tbl_orders

insert into Tbl_Orders values ('order_01', 'user_07', 'product_09','2023-02-21', 4, (select unit_amount from Tbl_Products where product_id='product_09'))
insert into Tbl_Orders values ('order_02', 'user_31', 'product_03','2022-01-23', 3, (select unit_amount from Tbl_Products where product_id='product_03'))
insert into Tbl_Orders values ('order_03', 'user_24', 'product_36','2020-11-09', 4, (select unit_amount from Tbl_Products where product_id='product_36'))
insert into Tbl_Orders values ('order_04', 'user_19', 'product_11','2023-10-21', 2, (select unit_amount from Tbl_Products where product_id='product_11'))
insert into Tbl_Orders values ('order_05', 'user_26', 'product_25','2022-07-10', 1, (select unit_amount from Tbl_Products where product_id='product_25'))
insert into Tbl_Orders values ('order_06', 'user_04', 'product_47','2021-12-30', 2, (select unit_amount from Tbl_Products where product_id='product_47'))



CREATE TABLE Tbl_Customer( CUSTOMER_ID varchar(10) primary key,
customer_name varchar(100),
PASSWORD char(8),
EMAIL VARCHAR(50),
PHONE_NUMBER BIGINT,
GENDER VARCHAR(10),
STREET VARCHAR(MAX),
CITY VARCHAR(50),
PIN NUMERIC(6),
STATE VARCHAR(50),
COUNTRY VARCHAR(50)
)


CREATE TABLE Tbl_Category (
CATEGORY_ID VARCHAR(10) PRIMARY KEY,
CATEGORY_NAME VARCHAR(50),
CATEGORY_DESCRIPTION varchar(max)
)

CREATE TABLE Tbl_Products
(
PRODUCT_ID VARCHAR(10) PRIMARY KEY,
PRODUCT_NAME VARCHAR(50),
PRODUCT_DESCRIPTION varchar(max),
PRODUCT_AMOUNT INT,
CATEGORY_ID VARCHAR(10) FOREIGN KEY REFERENCES Tbl_Category(CATEGORY_ID)
)

CREATE TABLE Tbl_Orders(
ORDER_ID VARCHAR(10) PRIMARY KEY,
CUSTOMER_ID varchar(10) FOREIGN KEY REFERENCES Tbl_Customer(CUSTOMER_ID),
PRODUCT_ID  VARCHAR(10) FOREIGN KEY REFERENCES Tbl_Products(PRODUCT_ID),
PAYMENT_ID VARCHAR(10), 
ORDER_DATE DATE,
ORDER_QUANTITY INT,
AMOUNT int)


CREATE TABLE Tbl_Payments(
PAYMENT_ID VARCHAR(10) PRIMARY KEY,
CUSTOMER_ID varchar(10) FOREIGN KEY REFERENCES Tbl_Customer(CUSTOMER_ID),
PRODUCT_ID  VARCHAR(10) FOREIGN KEY REFERENCES Tbl_Products(PRODUCT_ID),
PRODUCT_AMOUNT INT,
DATE_OF_PAYMENT DATE,
ACCOUNT_NUMBER VARCHAR(20),
EXPIRY_DATE  DATE)



CREATE TABLE Tbl_Cart(
CART_ID VARCHAR(10) PRIMARY KEY,
CUSTOMER_ID varchar(10) FOREIGN KEY REFERENCES Tbl_Customer(CUSTOMER_ID),
PRODUCT_ID  VARCHAR(10) FOREIGN KEY REFERENCES Tbl_Products(PRODUCT_ID),
DATE DATE,
QUANTITY_OF_PRODUCT INT)

CREATE TABLE Tbl_Reviews
(
REVIEW_ID VARCHAR(10) PRIMARY KEY,
CUSTOMER_ID varchar(10) FOREIGN KEY REFERENCES Tbl_Customer(CUSTOMER_ID),
PRODUCT_ID  VARCHAR(10) FOREIGN KEY REFERENCES Tbl_Products(PRODUCT_ID),
REVIEWS varchar(max)

create table tbl_likeditem
(
item_id int identity primary key,
customer_id varchar(10) foreign key references tbl_customer(customer_id),
product_id varchar(10) foreign key references tbl_products(product_id),

date date);

delete from Tbl_Orders where ORDER_ID='o_11'
select * from Tbl_Payments
INSERT INTO Tbl_Payments VALUES ('PAYMENT_01', 'USER_07', 'PRODUCT_09', '2023-02-21', 'A00025671', '2024-12-20', 
(select UNIT_AMOUNT*ORDER_QUANTITY from Tbl_Orders where PRODUCT_ID='PRODUCT_09') )

INSERT INTO Tbl_Payments VALUES ('PAYMENT_02', 'USER_31', 'PRODUCT_03', '2022-01-23', 'A00025671', '2024-12-20', 
(select UNIT_AMOUNT*ORDER_QUANTITY from Tbl_Orders where PRODUCT_ID='PRODUCT_03') )

INSERT INTO Tbl_Payments VALUES ('PAYMENT_03', 'USER_22', 'PRODUCT_36', '2020-11-09', 'A00025671', '2024-12-20', 
(select UNIT_AMOUNT*ORDER_QUANTITY from Tbl_Orders where PRODUCT_ID='PRODUCT_36') )

INSERT INTO Tbl_Payments VALUES ('PAYMENT_04', 'USER_04', 'PRODUCT_47', '2021-12-30', 'A00025671', '2024-12-20', 
(select UNIT_AMOUNT*ORDER_QUANTITY from Tbl_Orders where PRODUCT_ID='PRODUCT_47') )

INSERT INTO Tbl_Payments VALUES ('PAYMENT_05', 'USER_26', 'PRODUCT_25', '2023-02-21', 'A00025671', '2024-12-20', 
(select UNIT_AMOUNT*ORDER_QUANTITY from Tbl_Orders where PRODUCT_ID='PRODUCT_25') )


INSERT INTO Tbl_Payments VALUES ('PAYMENT_02', 'USER_14', 'PRODUCT_50', 400, '2022-12-26', 'A00764581', '2023-10-09')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_03', 'USER_29', 'PRODUCT_33', 700, '2023-02-10', 'A00056671', '2025-03-16')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_04', 'USER_32', 'PRODUCT_12', 500, '2022-07-19', 'A00028899', '2024-12-29')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_05', 'USER_10', 'PRODUCT_12', 500, '2022-12-29', 'A00065765', '2024-09-23')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_06', 'USER_38', 'PRODUCT_39', 19629, '2022-09-30', 'A00025666', '2025-04-08')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_07', 'USER_26', 'PRODUCT_25', 299, '2022-10-22', 'A000956756', '2026-11-07')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_08', 'USER_04', 'PRODUCT_47', 800, '2023-04-25', 'A00035464', '2024-01-18')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_09', 'USER_22', 'PRODUCT_20', 629, '2021-11-10', 'A00079767', '2023-08-25')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_10', 'USER_19', 'PRODUCT_11', 499, '2022-10-06', 'A00068385', '2025-05-09')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_11', 'USER_31', 'PRODUCT_03', 799, '2020-08-06', 'A00076384', '2025-10-30')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_12', 'USER_24', 'PRODUCT_36', 2399, '2022-09-06', 'A00025671', '2024-12-26')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_13', 'USER_33', 'PRODUCT_09', 629, '2021-12-14', 'A00086676', '2026-03-11')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_14', 'USER_32', 'PRODUCT_12', 500, '2022-07-19', 'A00028899', '2024-12-29')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_15', 'USER_10', 'PRODUCT_12', 500, '2022-12-29', 'A00065765', '2024-09-23')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_16', 'USER_38', 'PRODUCT_39', 19629, '2022-09-30', 'A00025666', '2025-04-08')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_17', 'USER_26', 'PRODUCT_25', 299, '2022-10-22', 'A000956756', '2026-11-07')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_18', 'USER_04', 'PRODUCT_47', 800, '2023-04-25', 'A00035464', '2024-01-18')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_19', 'USER_22', 'PRODUCT_20', 629, '2021-11-10', 'A00079767', '2023-08-25')
INSERT INTO Tbl_Payments VALUES ('PAYMENT_20', 'USER_19', 'PRODUCT_11', 499, '2022-10-06', 'A00068385', '2025-05-09')

INSERT INTO Tbl_likeditem VALUES('USER_24', 'PRODUCT_09','2022-09-06')

INSERT INTO Tbl_likeditem VALUES('USER_14', 'PRODUCT_50','2021-09-06')
INSERT INTO Tbl_likeditem VALUES('USER_29', 'PRODUCT_33','2023-01-10')
INSERT INTO Tbl_likeditem VALUES('USER_32', 'PRODUCT_12','2022-04-19')
INSERT INTO Tbl_likeditem VALUES('USER_10', 'PRODUCT_12','2022-10-21')
INSERT INTO Tbl_likeditem VALUES('USER_38', 'PRODUCT_39','2022-06-30')
INSERT INTO Tbl_likeditem VALUES('USER_26', 'PRODUCT_25','2022-03-22')
INSERT INTO Tbl_likeditem VALUES('USER_04', 'PRODUCT_47','2022-04-25')
INSERT INTO Tbl_likeditem VALUES('USER_22', 'PRODUCT_20','2021-11-03')
INSERT INTO Tbl_likeditem VALUES( 'USER_19', 'PRODUCT_11','2022-09-20')
INSERT INTO Tbl_likeditem VALUES( 'USER_31', 'PRODUCT_03','2020-05-030')
INSERT INTO Tbl_likeditem VALUES('USER_24', 'PRODUCT_36','2022-04-16')
INSERT INTO Tbl_likeditem VALUES( 'USER_33', 'PRODUCT_09','2021-12-14')
INSERT INTO Tbl_likeditem VALUES('USER_32', 'PRODUCT_12','2022-05-11')
INSERT INTO Tbl_likeditem VALUES('USER_10', 'PRODUCT_12','2021-12-29')
INSERT INTO Tbl_likeditem VALUES('USER_38', 'PRODUCT_39', '2022-09-29')

select * from tbl_likeditem

create table tbl_delivery_status (
status_id int identity primary key,
customer_id varchar(10) foreign key references tbl_customer(customer_id),
product_id varchar(10) foreign key references tbl_products(product_id),
status varchar(50))


INSERT INTO tbl_delivery_status VALUES('USER_24', 'PRODUCT_09','Already Delivered')
INSERT INTO tbl_delivery_status VALUES('USER_14', 'PRODUCT_50','Will deliver in 2 days')
INSERT INTO tbl_delivery_status VALUES('USER_29', 'PRODUCT_33','Will deliver in 5 days')
INSERT INTO tbl_delivery_status VALUES('USER_32', 'PRODUCT_12','Will deliver in 1 days')
INSERT INTO tbl_delivery_status VALUES('USER_10', 'PRODUCT_12','Will deliver in 4 days')
INSERT INTO tbl_delivery_status VALUES('USER_38', 'PRODUCT_39','Already Delivered0')
INSERT INTO tbl_delivery_status VALUES('USER_26', 'PRODUCT_25','Will deliver in 2 days')
INSERT INTO tbl_delivery_status VALUES('USER_04', 'PRODUCT_47','Already Delivered')
INSERT INTO tbl_delivery_status VALUES('USER_22', 'PRODUCT_20','Will deliver in 3 days')
INSERT INTO tbl_delivery_status VALUES('USER_19', 'PRODUCT_11','Will deliver in 1 days')
INSERT INTO tbl_delivery_status VALUES('USER_31', 'PRODUCT_03','Will deliver in 2 days')
INSERT INTO tbl_delivery_status VALUES('USER_24', 'PRODUCT_36','Will be delivering morning')
INSERT INTO tbl_delivery_status VALUES( 'USER_33', 'PRODUCT_09','Already Delivered')
INSERT INTO tbl_delivery_status VALUES('USER_32', 'PRODUCT_12','Will deliver in 2 days')
INSERT INTO tbl_delivery_status VALUES('USER_10', 'PRODUCT_12','Will deliver in 4 days')
INSERT INTO tbl_delivery_status VALUES('USER_38', 'PRODUCT_39', 'Already Delivered')
INSERT INTO tbl_delivery_status VALUES('USER_07', 'PRODUCT_39', 'Already Delivered')
select * from tbl_delivery_status

create table tbl_discounts
(
discount_id int identity primary key,
product_id varchar(10) foreign key references tbl_products(product_id),
discount_percent float,
validation varchar(40))

insert into tbl_discounts values ('product_20', 33, 'discount expired');
insert into tbl_discounts values ('product_24', 10.5, 'will be expired today');
insert into tbl_discounts values ('product_28', 21.8, 'valid from 2023-06-01 to 2023-06-03');
insert into tbl_discounts values ('product_10', 33, 'discount expired');
insert into tbl_discounts values ('product_48', 50, 'valid from 2023-06-10 to 2023-06-15');
insert into tbl_discounts values ('product_12', 20, 'valid from 2023-07-12 to 2023-07-20');
insert into tbl_discounts values ('product_39', 35.5, 'valid from 2023-06-01 to 2023-06-03');
insert into tbl_discounts values ('product_13', 25, 'will be expired today');

select * from tbl_discounts

alter table tbl_customer alter column gender char(1);
alter table tbl_reviews alter column reviews varchar(max);
alter table tbl_products alter column product_description varchar(max);
alter table tbl_customer alter column country varchar(20)
alter table tbl_customer alter column city varchar(20)
alter table tbl_customer alter column state varchar(20)

alter procedure spForCheckingDelivery
@customer_id varchar(10)
AS BEGIN

if(@customer_id not in (select CUSTOMER_ID from tbl_orders) )
begin
raiserror('No Order has been made by this customer',16,1);
end
else
if(@customer_id = any (select CUSTOMER_ID from tbl_orders)) 
begin 
select customer_id , product_id, status from   tbl_delivery_status where customer_id= @customer_id
end
end

spForCheckingDelivery 'user_31'



select * from tbl_delivery_status
select * from tbl_orders


alter proc spGetProductDetails
@categoryid varchar(10)
as begin
select p.product_id, product_name from tbl_category c join tbl_products p
on c.category_id= p.category_id where c.category_id=@categoryid
end
spGetProductDetails 'ct02'

alter table tbl_payments add TOTAL_AMOUNT int


CREATE PROC SPGetReviewsForProductId
@PRODUCTID VARCHAR(10)
AS BEGIN
SELECT REVIEWS FROM TBL_REVIEWS WHERE PRODUCT_ID=@PRODUCTID
END

SPGetReviewsForProductId  'PRODUCT_09';


CREATE PROCEDURE spDeleteCustomers
@customerid varchar(10)
AS
BEGIN
 DELETE FROM Tbl_Orders WHERE customer_id= @customerid;
 DELETE FROM Tbl_Payments where customer_id= @customerid; 
 DELETE FROM Tbl_Customer where customer_id= @customerid;
END
DeleteCustomers 'user_01'



--SPSAYING EXPIRY DATE MUST BE GREATER THAN ORDER DATE
 ALTER procedure spPaymentDates
@paymentid varchar(10),
@customerid varchar(10),
@productid varchar(10),
@amount int,
@Orderdate date,
@Acc_num Varchar(20),
@expirydate date
AS BEGIN
if(@expirydate<@Orderdate)
begin
raiserror('your card is expired',16,1);
end
else
begin try
begin tran 
insert into tbl_payments values (@paymentid,@customerid,@productid,@amount, @Orderdate, @Acc_num, @expirydate)
commit tran 
END TRY 
BEGIN CATCH
ROLLBACK TRAN 
END CATCH
END

spPaymentDates 'PAYMENT_21', 'USER_20', 'PRODUCT_50', 400, '2022-10-05', 'AA000072', '2021-10-06'




--triggers fr customer
create table tbl_customerdetails(
id int identity,
auditdata text)

alter trigger tr_tbl_customer_insert
on tbl_customer
for insert 
as
begin
declare @id varchar(10)
select @id= customer_id from inserted;
declare @username varchar(20)
select @username= CUSTOMER_NAME from inserted;
insert into tbl_customerdetails
values ('There is new salesman with ID= ' + @id + ' with username = ' + @username)
end;
 
INSERT INTO Tbl_Customer VALUES ('USER_51', 'NAGESH PRABHU ' , 'passwr51' ,'nageshprbu@gmail.com'  ,7847683976, 'M','Domlur','bANGALORE',687688 ,'KARNATAKA', 'INDIA')

select * from tbl_customer;
select * from tbl_customerdetails

delete from tbl_customer where customer_id='user_51'


alter trigger tr_tbl_customer_delete
on tbl_customer
for delete 
as
begin
declare @id varchar(10)
select @id= customer_id from deleted;
declare @username varchar(20)
select @username= CUSTOMER_NAME from deleted;
insert into tbl_customerdetails
values ('The user with ID= ' + @id + ' and username = ' + @username + 'has deleted the account')
end;


alter trigger  tr_tbl_customer_update ON tbl_customer
FOR UPDATE
AS BEGIN

DECLARE @customerid varchar(10)
DECLARE @OldName VARCHAR(30), @NewName VARCHAR(30)
declare @oldpassword  char(8),@NewPassword char(8)
Declare @OldEmail varchar(50), @newEmail varchar(50)
declare @Oldphone numeric(10), @Newphone numeric(10)
Declare @OldGender varchar(10), @NewGender varchar(10)
declare @OldStreet varchar(max), @Newstreet varchar(max)
DECLARE @Oldcity VARCHAR(30), @Newcity VARCHAR(30)
Declare @OldPin numeric(6), @NewPin numeric (6)
declare @OldState varchar(50), @NewState varchar(50)
declare @OldCountry varchar(50), @newCountry varchar(50)
DECLARE @AuditText VARCHAR(1000);

SELECT * INTO #TempTable FROM inserted

WHILE (EXISTS(SELECT customer_id from #TempTable))

BEGIN

SET @AuditText=' '

SELECT TOP 1 @customerid = customer_id,
@NewName = customer_name,
@NewPassword= password,
@newEmail=email,
 @Newphone=phone_number,
  @NewGender=gender,
  @Newstreet=street,
@Newcity= city,
@NewPin=pin,
@NewState=state,
 @newCountry=country
FROM #TempTable

SELECT @OldName= customer_name, 
@oldpassword=password,
@OldEmail=email,
 @Oldphone=phone_number,
  @OldGender=gender,
   @OldStreet=street,
@oldcity =  city, 
@OldPin=pin,
@OldState=state,
@OldCountry=country
FROM deleted WHERE @customerid = customer_id

SET @AuditText = 'A customer with id =' + CAST (@customerid AS VARCHAR)+ 'changed'
if (@OldName <> @NewName)
SET @AuditText=@AuditText + ' name from ' +@OldName + ' to ' + @NewName
if (@oldpassword <> @NewPassword)
SET @AuditText=@AuditText + ' password from'  +@oldpassword + ' to ' + @NewPassword
if (@OldEmail <> @newEmail)
SET @AuditText=@AuditText + ' email from ' +@OldEmail + ' to ' + @newEmail
if ( @Oldphone <> @Newphone)
SET @AuditText=@AuditText + ' phonenumber from ' +cast(@Oldphone as varchar) +' to ' +cast( @Newphone as varchar)
if ( @OldGender <> @NewGender)
SET @AuditText=@AuditText + ' gender from ' + @OldGender + ' to ' + @NewGender
if ( @OldStreet <> @Newstreet)
SET @AuditText=@AuditText + ' street from ' + @OldStreet+ ' to ' + @Newstreet
if (@oldcity!= @Newcity)
SET @AuditText = @AuditText + ' city from ' +@Oldcity + ' to ' + @Newcity
if (@OldPin!= @NewPin)
SET @AuditText = @AuditText + ' pin from ' + cast (@OldPin as varchar) + ' to ' + cast (@NewPin as varchar)
if ( @NewState <> @OldState)
SET @AuditText=@AuditText + ' state from ' + @OldState + ' to ' + @NewState
if (@OldCountry!= @newCountry)
SET @AuditText = @AuditText + ' country from ' +@OldCountry + ' to ' + @newCountry

insert into  tbl_customerdetails values (@AuditText)

delete from #TempTable where @customerid = customer_id
end

end

update tbl_customer
set state='Kerela' where customer_id= 'user_26'




--triggers  for products table
create table  tbl_productdetails(
id int identity,
category_id varchar(10) foreign key references tbl_category(category_id),
auditdata text)

alter trigger tr_tbl_products_insert
on tbl_products
for insert 
as
begin
declare @id varchar(10)
select @id= product_id from inserted;
declare @productname varchar(20)
select @productname= product_name from inserted;
declare @categoryid varchar(10)
select @categoryid= category_id from inserted;
insert into tbl_productdetails
values (@categoryid, 'There is new product with ID= ' + @id + ' with product name as = ' + @productname)
end;

SELECT * FROM TBL_CATEGORY
SELECT * FROM TBL_productdetails
insert into tbl_products values ('product_51', 'kurtas', 'women kurtas', 1200, 'ct01')


create trigger tr_tbl_products_delete1
on tbl_products
for delete 
as
begin
declare @id varchar(10)
select @id= product_id from deleted;
declare @productname varchar(20)
select @productname= product_name from deleted;
declare @categoryid varchar(10)
select @categoryid= category_id from deleted;
insert into  TBL_productdetails
values (@categoryid, 'A product with ID= ' + @id + ' is been deleted ')
end;

delete from tbl_products where product_id ='product_51'
