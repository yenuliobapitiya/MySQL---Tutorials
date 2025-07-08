SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Ron'
;

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical Operators
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male'
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'leslie' AND age = 44) OR age > 55
;

-- LIKE Statement
-- % and _
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a___%'
;
