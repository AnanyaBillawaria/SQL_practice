# loading the full dataset
SELECT * FROM employee_demographics;
# loading specific columns 
SELECT first_name, last_name, age 
FROM employee_demographics;
# renaming columns 
SELECT first_name AS fname , last_name AS lname , age AS x 
FROM employee_demographics;
# to sort our rows we use orderby
SELECT * FROM employee_demographics
ORDER BY age DESC;

# Excercise 
#Select first_name, last_name, occupation from employee_salary

SELECT first_name , last_name , occupation 
FROM employee_salary;

#Select all columns from parks_departments ordered by department_name ascending
SELECT * FROM parks_departments 
ORDER BY department_name ASC ;
#Select first_name, last_name, age, birth_date from employee_demographics, ordered by birth_date ascending (oldest born first).
SELECT first_name , last_name , age , birth_date 
FROM employee_demographics
ORDER BY birth_date ASC;
# WHERE 
SELECT * 
FROM employee_demographics 
WHERE gender = 'Female'; 
 
SELECT * 
FROM employee_demographics 
WHERE age > 40 ;
# for multiple conditions 
SELECT first_name, last_name, occupation , salary 
FROM employee_salary
WHERE salary> 6000 AND dept_id = 1 ; 

# filter by date 
SELECT first_name , last_name , birthdate 
FROM employee_demographics 
WHERE birth_date < '1980-01-01';

# using OR 
SELECT * FROM employee_salary 
WHERE dept_id = 4 OR dept_id = 6;    # will show both 

# Excercise 
# List all employees who are younger than 40.
SELECT first_name , last_name 
FROM employee_demographics 
WHERE age < 40 ; 
# List first_name, last_name, occupation, salary of employees earning less than 60,000.
SELECT first_name, last_name, occupation, salary
FROM employee_salary 
WHERE salary < 60000; 
# List first_name, last_name, age for employees who are either 35 or 36 years old.
SELECT first_name, last_name, age 
FROM employee_demographics 
WHERE age = 35 OR age =  36 ; 

# Group by
SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation , salary
FROM employee_salary
GROUP BY occupation , salary ;

SELECT gender , AVG(age), MAX(age) , MIN(age) ,COUNT(age)
FROM employee_demographics
GROUP BY gender;


-- ORDER BY

SELECT*
FROM employee_demographics
ORDER BY age , gender;

SELECT*
FROM employee_demographics
ORDER BY 5 , 4
;

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(Age)> 40 ; 



SELECT occupation , AVG(salary)
FROM employee_salary
WHERE occuption LIKE '%manager%'
GROUP BY occupation 
HAVING AVG(salary) > 75000 ;
;
