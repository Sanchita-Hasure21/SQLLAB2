create database Itvedant2;
use Itvedant2;
create table EmployeeInfo2 ( emp_id int primary key auto_increment,
emp_name varchar(20) not null , email varchar (20) unique, 
salary int check (salary between 15000 and 80000),
city varchar (20) check(city in('mumbai','pune','nagpur','nashik')),
state varchar (20) default 'Maharashtra',
created_at datetime default current_timestamp 
);
alter table EmployeeInfo2
add department varchar (20);
desc EmployeeInfo2;

insert into EmployeeInfo2 ( emp_name , email,salary ,city,department ) values ( 'sana','sana@gmail.com',50000,'pune', 'IT'),('ishikaa','ishikaa@gmail.com',45000,'nashik','HR'),('shweta','shweta@gmail.com',40000,'nagpur','Finance'),('sanchita','sanchita@gmail.com',80000,'mumbai','IT'),('aditi','aditi@gmail.com',65000,'nashik','Finance'),('rahul','rahul@gmail.com',45000,'nagpur','HR');

select department, sum(salary) as total from EmployeeInfo2
group by department 
order by total desc ; 

select * from EmployeeInfo2;
insert into EmployeeInfo2 ( emp_name , email,salary ,city,department ) values ('yash','yash@gmail.com',45000,'mumbai','Admin'),('amit','amit@gmail.com',75000,'nagpur','admin');

select department, avg(salary) as total from EmployeeInfo2
group by department;

select emp_name , salary, department,
avg(salary) OVER(partition by department) AS average_salary from EmployeeInfo2 ;

select emp_name , salary, row_number()
OVER(ORDER BY salary desc) AS row_num from EmployeeInfo2 ;

select emp_name , salary, rank()
OVER(ORDER BY salary desc) AS row_num from EmployeeInfo2 ;

select emp_name , salary, dense_rank()
OVER(ORDER BY salary desc) AS row_num from EmployeeInfo2 ;