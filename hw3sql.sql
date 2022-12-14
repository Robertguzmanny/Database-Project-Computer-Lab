/*
Robert Guzman
November 10 2020
Project 3
*/

/*
1)Retrieve all last names of all employees.

Your query for question 1 should go below after the comment
*/

use company;
select lname from employee;


/*
2)Write an insert statement to add your name (the name you have listed on CUNYfirst) to the employee table. 
For the SSN field, please make up a fake SSN such 123456789. DO NOT USE your real SSN. 
You can choose any department you want for your information.

Your query for question 2 should go below after the comment
*/

insert into employee (fname, lname, ssn, bdate, address, sex, dno) 
values ('Robert', 'Guzman', '123459999', '2000-01-01', '123 Street, Bronx, NY', 'M', 6);

select * from employee;


/*
3)Retrieve the names of all employees in department 5 who work more than 10 hours per week on the ProductX project.

Your query for question 3 should go below after the comment
*/

select * from employee, works_on where ssn = essn and dno = 5 and hours > 10 and pno = 1;

/*
4)List the names of all employees who have a dependent with the same first name as themselves.

Your query for question 4 should go below after the comment
*/

select * from employee, dependent where fname = dependent_name;

/*
5)Find the names of all employees who are directly supervised by ‘Franklin Wong’.

Your query for question 5 should go below after the comment
*/
select * from employee where superssn = '333445555';

/*
6)For each department whose average employee salary is more than $30,000, retrieve the department name and the number of employees working for that department.

Your query for question 6 should go below after the comment
*/

select distinct d.dname as Department, 	count(*) as Number_of_Employees, avg(salary) as Average_Salary_of_Department from employee e
join department d on e.dno = d.dnumber
group by e.dno;

/*
7)Retrieve the number of male employees in each department making more than $30,000.

Your query for question 7 should go below after the comment
*/

select dno, count(*) from employee where sex = 'M' and salary > 30000 
group by dno order by dno;

/*
8)Retrieve the names of all employees who work in the department that has the employee with the highest salary among all employees.

Your query for question 8 should go below after the comment
*/

select *from employee where dno = (select dno from employee where salary = (select max(salary) from employee));

/*
9)Retrieve the names of all employees whose supervisor’s supervisor has ‘888665555’ for Ssn.

Your query for question 9 should go below after the comment
*/

select * from employee where ssn = '888665555';
