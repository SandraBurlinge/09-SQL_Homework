CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);


CREATE TABLE employees(
	emp_no INTEGER NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR,
	hire_date DATE
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL, 
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary INT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE titles(
	emp_no INTEGER NOT NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

----------------------------------------------
---Adding Additional primary keys

ALTER TABLE dept_manager
ADD COLUMN manager_id SERIAL PRIMARY KEY;

ALTER TABLE dept_emp
ADD COLUMN dept_emp_id SERIAL PRIMARY KEY;

ALTER TABLE salaries
ADD COLUMN salary_id SERIAL PRIMARY KEY;

ALTER TABLE titles
ADD COLUMN title_id SERIAL PRIMARY KEY;