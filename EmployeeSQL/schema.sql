
CREATE TABLE titles (
    title_id varchar(50)   NOT NULL,
    title varchar(50)   NOT NULL,
    Primary key  (title_id)

);
CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar(50)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    sex varchar(50)   NOT NULL,
    hire_date date  NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    PRIMARY KEY (emp_no)
      
);

CREATE TABLE departments (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(30)   NOT NULL,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no),
    primary key (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no),
    primary key (dept_no,emp_no)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    foreign key (emp_no) references employees(emp_no),
    primary key (emp_no)
);




select * from dept_manager