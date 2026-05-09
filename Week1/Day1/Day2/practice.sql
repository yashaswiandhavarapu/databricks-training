select * from Employee
select name,salary from Employee
select * from employee where age>30
select name from Department
select e.name from Employee e  join Department d on e.department_id=d.department_id where d.name="IT"
select * from Employee where name like 'j%'
select * from Employee where name like '%e'
select * from Employee where name like '%a%'
select * from Employee where name like '__________'
select * from Employee where name like '_o%'
select * from Employee where YEAR(hire_date) =2020
select * from Employee where MONTH(hire_date)=1;
select * from Employee Where hire_date < '2019-01-01'
select * from Employee where hire_date > '2021-03-01'
select * from Employee where hire_date>= DATE_SUB(CURDATE(),INTERVAL 2 YEAR)
select SUM(salary) AS total_salary from Employee 
select AVG(salary) AS total_salary from Employee
select MIN(salary) AS minimum_salary from Employee
select MAX(salary) AS maximum_salary from Employee
select department_id, COUNT(*) AS employee_count from Employee GROUP BY department_id
select department_id, AVG(salary) AS avg_salary FROM Employee GROUP BY department_id