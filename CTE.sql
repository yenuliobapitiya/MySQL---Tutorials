-- CTEs

with CTE_Example AS
(
Select gender, 
avg(salary)avg_sal, 
max(salary)max_sal, 
min(salary)min_sal, 
count(salary)count_sal
From employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select AVG(avg_sal)
from CTE_Example
;

select avg(avg_sal)
from(
Select gender, 
avg(salary)avg_sal, 
max(salary)max_sal, 
min(salary)min_sal, 
count(salary)count_sal
From employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)example_subquery
;

with CTE_Example AS
(
Select employee_id, gender, birth_date
From employee_demographics dem
where birth_date > '1985-01-01'
),
CTE_Example2 AS
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from CTE_Example
join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id
;















