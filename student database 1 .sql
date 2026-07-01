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

alter table student 
add city varchar (20);
set SQL_Safe_updates= 0;
update student set city ='mumbai' where stud_id = 100 ;
update student set city ='pune' where stud_id = 101 ;
update student set city ='nashik' where stud_id = 102 ;
update student set city ='nagpur' where stud_id = 103 ;
update student set city ='mumbai' where stud_id = 104 ;
update student set city ='pune' where stud_id = 105 ;
update student set city ='nashik' where stud_id = 106 ;
update student set city ='nagpur' where stud_id = 107 ;
update student set city ='mumbai' where stud_id = 108 ;

select city , sum(age) from student group by city having sum(age)>60;

select city , sum(age) as total from student group by city ;

select * from student where stud_name like 's%';

select * from student where stud_name like '%h';

select * from student where stud_name like '_a%';

select * from student where stud_name like '%s%';

