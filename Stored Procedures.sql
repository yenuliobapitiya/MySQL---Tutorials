-- Stored Procedures

select *
from employee_salary
where salary >= 50000;

create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;

call large_salaries();

create procedure large_salaries()
select *
from employee_salary
where salary >= 50000;
select *
from employee_salary
where salary >= 10000;

DELIMITER $$
create procedure large_salaries2()
BEGIN
	select *
	from employee_salary
	where salary >= 50000;
	select *
	from employee_salary
	where salary >= 10000;
END $$
DELIMITER ;

call large_salaries3();

DELIMITER $$
create procedure large_salaries4(p_employee_id int)
BEGIN
	select salary
	from employee_salary
	where employee_id = p_employee_id 
    ;
END $$
DELIMITER ;

call large_salaries4(1);








