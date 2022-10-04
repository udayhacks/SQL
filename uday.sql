-- Active: 1664686575094@@127.0.0.1@3306@company


SELECT branch_id,branch_name,mgr_id,mgr_start_date FROM branch;
select * from branch order by  mgr_id ASC;
select * from employee where not emp_id  in (103,102,100) and super_id <> 100 ;



insert into branch values (7,"alpha",null,null) ;


select * from branch where  mgr_id is  null  ;

SELECT branch_id,supplier_name,suppy_type FROM branch_supplier;





-- Active: 1664686575094@@127.0.0.1@3306@company


SELECT branch_id,branch_name,mgr_id,mgr_start_date FROM branch;
select * from branch order by  mgr_id ASC;
select * from employee where not emp_id  in (103,102,100) and super_id <> 100 ;



insert into branch values (7,"alpha",null,null) ;


select * from branch where  mgr_id is  null  ;

SELECT branch_id,supplier_name,suppy_type FROM branch_supplier;
update branch set mgr_id = 103 ,mgr_start_date = "2002-05-08 " WHERE branch_id = 7 ; 

SELECT branch_id,branch_name,mgr_id,mgr_start_date FROM branch;
delete from branch where mgr_id = 103 and branch_id = 7 ;
SELECT * FROM employee
FETCH FIRST 3 rows ONLY;

SELECT * FROM employee
;
SELECT * FROM employee  
 join branch on  employee.branch_id= branch.branch_id
 where salary >= 100000 ;

 SELECT * FROM employee  
 right join branch on  employee.branch_id= branch.branch_id
 ;



insert into branch values (9,null,null,null);
insert into branch values (11,null,null,null);


select * from work_with
union all 
select * from client ;





SELECT * FROM employee;
select sex ,count( sex )  ,sum(salary),super_id from employee group by sex ;

SELECT * FROM employee;

SELECT branch_id,branch_name,mgr_id,mgr_start_date FROM branch;

select   first_name from employee where branch_id = all(select branch_id from branch where branch_id = 1);
select   first_name from employee where branch_id = any(select branch_id from branch where branch_id = 1) and sex = 'f';



insert into female_emp select  emp_id,first_name ,salary ,branch_id from employee where sex = 'f';

SHOW columns from employee ;


create table female_emp (emp_id int  primary key , first_name varchar(22), salary int ,branch_id int ,FOREIGN key (emp_id) REFERENCES employee (emp_id) ONsele DELETE CASCADE ,foreign key (branch_id) references branch(branch_id ) on delete cascade );


select * from female_emp ;


 select  female_emp into emp_id,first_name ,salary ,branch_id  from employee where sex = 'm';



SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;
SELECT first_name, salary,
case 
when salary <= 10000 then "low paid"
when salary >= 100000 then "high paid"
else "service worker"
end as salary_status
from employee ;