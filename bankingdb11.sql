create database BankingDB1;
use BankingDB1;
create table Customers (
CustomerID INT PRIMARY KEY ,FirstName varchar (50) ,
LastName varchar (50), Email varchar (50),
phone  varchar (15) , AccountCreationDate DATE ) ;
insert into Customers values (1,'Aarav','patil','aarav@gmail.com',9878648684,'2026-01-13'),(2,'diya','Sharma','diya@gmail.com',9525668789,'2022-02-15'),(3,'rohan','mehta','rohan@gmail.com',8966466895,'2023-03-21'),(4,'sneha','rao','sneha@gmail.com',9237237998,'2025-01-25'),(5,'priya','verma','priya@gmail.com',8786831974,'2024-12-13')
,(6,'Anjali','joshi','anjali@gmail.com',9871538164,'2020-02-18'),(7,'karan','gupta','karan@gmail.com',8771681692,'2019-11-30'),(8,'neha','desai','neha@gmail.com',9894296419,'2026-07-26'),(9,'rohit','kulkarni','rohit@gmail.com',8427361823,'2018-05-19'),
(10,'pooja','nair','pooja@gmail.com',9858123152,'2021-10-21');

select * from Customers ;

create table Accounts (  
AccountID INT PRIMARY KEY , 
CustomerID int , 
AccountType varchar (20), Balance DECIMAL (10,2) ,
FOREIGN KEY ( CustomerID) REFERENCES Customers(CustomerID)
) ; 
insert into Accounts values (1,1,'savings',50000.00),(2,2,'current',125000.00),(3,3,'savings',30500.75),(4,4,'savings',75250.00),(5,5,'current',210000.00),(6,6,'savings',15000.25),(7,7,'current',50000.00),
(8,8,'savings',42500.60),(9,9,'current',67000.00),(10,10,'savings',89000.40);

select * from Accounts ;

Create table Transactions ( TransactionID INT PRIMARY KEY , AccountID int , TransactionDate DATE ,
Amount DECIMAL (10,2) ,TransactionType varchar ( 20) , FOREIGN KEY (AccountID) REFERENCES  Accounts(AccountID) ) ;

insert into Transactions values (1,1,'2026-01-17',5000.00,'Deposit'),(2,2,'2026-01-13',12000.00,'Withdrawal'),(3,3,'2026-01-05',2500.00,'Deposit'),(4,4,'2026-01-10',7500.00,'Withdrawal'),(5,5,'2026-02-15',20000.00,'Deposit'),(6,6,'2026-03-21',1500.00,'Withdrawal'),(7,7,'2026-04-23',9800.00,'Deposit'),
(8,8,'2026-08-23',4250.00,'Withdrawal'),(9,9,'2026-05-22',6700.00,'Deposit'),(10,10,'2026-04-11',8900.00,'Withdrawal');

select * from Transactions ;

create table Branches ( BranchID INT PRIMARY KEY , BranchName varchar (100), BranchAddress varchar (150), Branchphone varchar (20) ) ;

insert into Branches values (1,'andheri branch','andheri west,Mumbai','02226251111'),(2,'Thane branch','Thane west,Thane','02225371222'),(3,'kalyan branch','kalyan east,kalyan','02512301333'),(4,'dadar branch','dadar east, Mumbai','02224301444'),(5,'borivali branch','borivali east,Mumbai','02228901555'),(6,'pune branch','shivaji nagar ,pune', '02025511666'),
(7,'vashi branch','sector17,vashi','02227661777'),(8,'powai branch','powai,Mumbai','02225701888'),
(9,'mulund branch','mulund west,Mumbai','02225601999'),(10,'panvel branch','panvel,navi Mumbai','02227451000');

select * from Branches ;

create table AccountBranches1 ( AccountID int , BranchID int , AssingmentDate DATE , 
FOREIGN KEY ( AccountID) REFERENCES Accounts(AccountID), FOREIGN KEY (BranchID) REFERENCES Branches(BranchID) ) ; 

insert into AccountBranches1 values(1,1,'2026-01-15'),(2,2,'2022-02-13'),(3,3,'2023-03-15'),(4,4,'2025-01-25'),(5,5,'2024-12-13'),(6,6,'2020-02-18'),
(7,7,'2019-11-30'),(8,8,'2026-07-26'),(9,9,'2018-05-19'),(10,10,'2021-10-21');

select * from AccountBranches1 ;
 
 create table Loans ( LoanID INT PRIMARY KEY , CustomerID int , LoanAmount DECIMAL (10,2) ,InterestRate DECIMAL (5,2) , StartDate DATE, 
 EndDate DATE , FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerId));
 
 insert into Loans values (1,1,500000.00,8.50,'2026-01-21','2031-01-21'),(2,2,750000.00,9.00,'2022-03-17','2027-03-17'),(3,3,300000.00,7.75,'2023-05-28','2028-05-28'),
 (4,4,1000000.00,8.25,'2025-01-26','2030-01-26'),(5,5,450000.00,9.10,'2025-01-21','2030-01-21'),(6,6,200000.00,7.50,'2020-03-12','2025-03-12'),
 (7,7,600000.00,8.75,'2020-01-14','2025-01-14'),(8,8,350000.00,8.00,'2026-08-30','2031-08-30'),
 (9,9,800000.00,9.25,'2018-06-26','2023-06-26'),(10,10,250000.00,7.90,'2021-11-24','2026-11-24');
 
 select * from Loans ;
 
create table Customers_backup 
( CustomerID int , FirstName varchar (50) , LastName varchar (50) , Email varchar (50), phone varchar (20) ,
AccountCreationDate DATE );

insert into Customers_backup (CustomerID , FirstName, LastName , Email, phone , AccountCreationDate )
select * from Customers ;

select * from Customers_backup ; 

select CustomerID , FirstName , Email from Customers ; 

select * from Customers ;  

select * from Customers 
order by FirstName ;

select * from Customers 
order by FirstName desc ;

select AccountType ,sum(Balance) as total from Accounts 
group by AccountType ;

select TransactionType , sum(Amount) as total from Transactions 
group by TransactionType ;

select * from Customers limit 5;

select * from Customers limit 5 offset 2;

desc Customers ;

insert into Customers (CustomerID ,FirstName , LastName, Email, AccountCreationDate ) values (11,'nikhil','jadhav','nikhil@gmail.com','2026-03-25');
select * from Customers where Phone is null ;

select * from Customers where Phone is not null ;

insert into Customers (CustomerID ,FirstName , LastName, AccountCreationDate ) values( 12 ,'sahil','khan','2024-12-10');
select * from Customers where Email is null;

insert into Accounts (AccountID , CustomerID, AccountType ) values (11,11,'savings');
select * from Accounts where Balance is null ; 
select * from Accounts where Balance is not null ; 

select LastName from Customers order by LastName ; 

select * from Transactions order by Amount desc limit 5 ; 

select * from Transactions limit 4 offset 3 ;

select distinct TransactionType from Transactions ;

select LoanID , CustomerID , LoanAmount,
lag (LoanAmount) over (order by LoanAmount desc) as previousloanamount from Loans ;

SELECT LoanID, CustomerID, LoanAmount,
LEAD(LoanAmount) OVER(ORDER BY LoanAmount DESC) AS NextLoanAmount
FROM Loans; 

select *  from Customers ; 
select *  from Accounts ;

select FirstName , LastName , Email ,Balance , AccountType 
from Customers join Accounts 
on Customers.CustomerID = Accounts.CustomerID;


create table Demo11  ( id int , Name  varchar (20));
create table demo2 ( id int , email varchar( 30));

insert into Demo11 values (1,'sanchita'),(2,'ishika'),(4,'rahul'),(5,'aditi'),(6,'vansh') ;

insert into demo2 values (1,'sanchita@gmail.com '),(2,'ishika@gmail.com'),(3,'yash@gmail.com '),(7,'smit@gmail.com'),(8,'om@gmail.com') ;

select Name ,email from Demo11 left outer join 
demo2 on Demo11.id = demo2.id;

select Name ,email from Demo11 right outer join 
demo2 on Demo11.id = demo2.id;

select * from Demo11 natural join demo2;

alter table   Demo11 add column city varchar (20);
alter table   demo2 add column city varchar (20);

set SQL_SAFE_UPDATES =0 ;

update Demo11 set city ='kalyan' where id = 1;
update Demo11 set city ='thane' where id = 2;
update Demo11 set city ='nerul' where id = 4;
update Demo11 set city ='vashi' where id = 5;
update Demo11 set city ='pune' where id = 6;

update demo2 set city ='kalyan' where id = 1; 
update demo2 set city ='dadar' where id = 2 ;
update demo2 set city ='nerul' where id = 3 ;
update demo2 set city ='neral' where id = 7 ;
update demo2 set city ='thane' where id = 8 ;

select * from Demo11 natural join demo2;

select * from Demo11 cross join demo2;

select * from Demo11 , demo2;
# not considered as a vaild join if join in not written 

alter table Customers 
add ReferrelId int ;
update Customers  set ReferrelId = 1 where CustomerID =2;
update Customers  set ReferrelId = 1 where CustomerID =3;
update Customers  set ReferrelId = 2 where CustomerID =4;
update Customers  set ReferrelId = 2 where CustomerID =5;
update Customers  set ReferrelId = 3 where CustomerID =6;
update Customers  set ReferrelId = 3 where CustomerID =7;
update Customers  set ReferrelId = 4 where CustomerID =8;
update Customers  set ReferrelId = 5 where CustomerID =9;
update Customers  set ReferrelId = 6 where CustomerID =10;
update Customers  set ReferrelId = 7 where CustomerID =11;
update Customers  set ReferrelId = 3 where CustomerID =12;

select c.FirstName AS Customers  , c1.FirstName as Referrel
from Customers c join Customers c1 
on c.ReferrelId = c1.CustomerID;

SELECT * FROM Transactions
WHERE Amount >(SELECT AVG(Amount)FROM Transactions);

Select TransactionDate ,Amount ,TransactionType from Transactions
where AccountId  IN  (select AccountId from Accounts where AccountType = 'current' );

select FirstName , LastName , phone from Customers 
where CustomerID=(select CustomerID from Accounts Where AccountID =1);

select FirstName , LastName , phone from Customers 
where CustomerID in (select CustomerID from Accounts Where Balance < 125000 );

select FirstName , LastName , phone from Customers 
where CustomerID>= (select CustomerID from Accounts Where balance= 67000);

select FirstName , LastName , phone from Customers 
where CustomerID<= (select CustomerID from Accounts Where balance= 67000);

select FirstName , LastName , phone from Customers 
where CustomerID <>(select CustomerID from Accounts Where balance= 67000);

select FirstName , LastName , phone from Customers 
where CustomerID > (select CustomerID from Accounts Where balance= 67000);

select FirstName , LastName , phone from Customers 
where CustomerID < (select CustomerID from Accounts Where balance= 67000);

select CustomerID , FirstName , LastName , Email from Customers 
where CustomerID > any ( select CustomerID from Accounts where AccountType = 'savings');

select CustomerID , FirstName , LastName , Email from Customers 
where CustomerID < any ( select CustomerID from Accounts where AccountType = 'savings');

select CustomerID , FirstName , LastName , Email from Customers 
where CustomerID > all ( select CustomerID from Accounts where AccountType = 'savings');

select CustomerID , FirstName , LastName , Email from Customers 
where CustomerID < all ( select CustomerID from Accounts where AccountType = 'savings');

select CustomerID , FirstName , LastName , Email from Customers 
where CustomerID = all 
( select CustomerID from Accounts where AccountType = 'savings');








