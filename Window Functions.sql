-- Window Functions

Select gender, avg(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
;

Select gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.first_name, dem.last_name ,gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.first_name, dem.last_name ,gender, 
SUM(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.first_name, dem.last_name ,gender, salary, 
SUM(salary) over(partition by gender order by dem.employee_id) AS Rolling_Total
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.employee_id ,dem.first_name, dem.last_name ,gender, salary, 
ROW_NUMBER() OVER()
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.employee_id ,dem.first_name, dem.last_name ,gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) 
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.employee_id ,dem.first_name, dem.last_name ,gender, salary, 
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
rank() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
dense_rank() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;








