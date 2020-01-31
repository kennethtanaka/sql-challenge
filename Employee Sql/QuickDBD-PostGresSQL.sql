-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "department_number" VARCHAR   NOT NULL,
    "department_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "department_number"
     )
);

CREATE TABLE "dept_emp" (
    "emp_number" INT,   NOT NULL,
    "department_number" VARCHAR   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_number","department_number"
     )
);

CREATE TABLE "employees" (
    "emp_number" INT   NOT NULL,
    "birthdate" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_number"
     )
);

CREATE TABLE "dept_manager" (
    "department_number" VARCHAR   NOT NULL,
    "emp_number" INT   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "department_number","emp_number"
     )
);

CREATE TABLE "salaries" (
    "emp_number" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_number"
     )
);

CREATE TABLE "titles" (
    "emp_number" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_number" FOREIGN KEY("emp_number")
REFERENCES "employees" ("emp_number");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_department_number" FOREIGN KEY("department_number")
REFERENCES "departments" ("department_number");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_department_number" FOREIGN KEY("department_number")
REFERENCES "departments" ("department_number");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_number" FOREIGN KEY("emp_number")
REFERENCES "employees" ("emp_number");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_number" FOREIGN KEY("emp_number")
REFERENCES "employees" ("emp_number");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_number" FOREIGN KEY("emp_number")
REFERENCES "employees" ("emp_number");

