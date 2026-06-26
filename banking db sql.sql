create database Itvedant1 ;
use Itvedant1 ;
create table student 
(stud_id int , stud_name varchar (20), Age int , Email varchar (30) ) ;
insert into student values ( 100, 'Nilesh ',23,'nilesh@gmail.com');
insert into student values ( 101, 'sana',24,'sana@gmail.com');
insert into student values ( 102, 'Rahul',25,'Rahul@gmail.com');
insert into student values ( 103, 'amit',24,'amit@gmail.com');
insert into student values ( 104, 'Vansh',22,'vansh@gmail.com');
insert into student values ( 105, 'yash',21,'yash@gmail.com');
insert into student values ( 106, 'harsh',23,'harsh@gmail.com');
select * from student ;
insert into student values ( 107, 'priya ',24,'priya@gmail.com'),(108,'sneha',23,'sneha@gmail.com');
select * from student ;
select count(*) from student ;
set SQL_Safe_updates= 0;
update student set stud_name = 'riya' where stud_id = 102 ;
select * from student ;
update student set Email ='riya@gmail.com' where stud_id = 102 ;
select * from student ;
select sum(Age) from student ;
select max(Age) from student ;
select min(Age) from student ;
select avg(Age) from student ;
select count(Age) from student ;
select * from student ;
select * from student where stud_id = 100;
select * from student where stud_id > 100;
select * from student where stud_id <107;
select * from student where stud_id >= 100;
select * from student where stud_id <= 105;
select * from student where stud_id <> 100;
select * from student where stud_id = 100 and stud_name = 'amit';
select * from student where stud_id = 100 or stud_name = 'riya';
select * from student where not stud_name = 'amit';
select * from student where stud_id = 100 or stud_id = 101 or stud_id = 102 or stud_id = 103;
select * from student where stud_id in (100 , 101, 102, 103);
select * from student where stud_id not in ( 100,101,102,103);
create database BankingDB ;
use BankingDB ;
create table Customers (
CustomerID INT PRIMARY KEY ,FirstName varchar (50) ,
LastName varchar (50), Email varchar (50),
phone  varchar (15) , AccountCreationDate DATE ) ; 


create table Accounts (  
AccountID INT PRIMARY KEY , 
CustomerID int , 
AccountType varchar (20), Balance DECIMAL (10,2) ,
FOREIGN KEY ( CustomerID) REFERENCES Customers(CustomerID)
) ; 
Create table Transactions ( TransactionID INT PRIMARY KEY , AccountID int , TransactionDate DATE ,
Amount DECIMAL (10,2) ,TransactionType varchar ( 20) , FOREIGN KEY (AccountID) REFERENCES  Accounts(AccountID) ) ;

create table Branches ( BranchID INT PRIMARY KEY , BranchName varchar (100), BranchAddress varchar (150), Branchphone varchar (20) ) ;
create table AccountBranches ( AccountID int , BranchID int , AssingmentDate DATE , 
FOREIGN KEY ( AccountID) REFERENCES Accounts(AccountID), FOREIGN KEY (BranchID) REFERENCES Branches(BranchID) ) ; 
 
 create table Loans ( LoanID INT PRIMARY KEY , CustomerID int , LoanAmount DECIMAL (10,2) ,InterestRate DECIMAL (5,2) , StartDate DATE, 
 EndDate DATE , FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerId)); 
 Describe Customers ; 
 Describe Accounts ; 
 Describe Loans ; 
 show databases ;
 alter table student 
 add city varchar ( 20) ;
 alter table Customers 
 add DateOfBirth DATE ; 
 DESCRIBE Customers ; 
 
 alter table Customers 
 Modify phone varchar (20) ; 
 
 alter table Accounts 
 change column Balance MinBalance decimal (10,2) ;
 describe Accounts ; 
 
 drop table AccountBranches ; 
 
 alter table Accounts 
 drop column Minbalance ;
 describe Accounts ;
 
 alter table Accounts 
 add column MinBalance decimal (10,2) ; 
 describe Accounts ;
 
 alter table Customers 
 rename to CustInfo ; 
 describe CustInfo ; 
 
 alter table CustInfo 
 add address varchar (100) after Email ; 
 describe CustInfo ; 
 
 drop database Itvedant1 ; 
 
 Truncate table Branches ; 
delete from CustInfo ; 
