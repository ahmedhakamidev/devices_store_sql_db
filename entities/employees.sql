use devices_store_db;

create table ds.employees
(
employee_id int identity(1, 1),
person_id int not null,
job_title_id int not null,
hire_date datetime not null default sysdatetime(),
salary decimal(10, 2) not null,
is_active bit not null default 1,

-- constraints
constraint pk_employees_employee_id primary key (employee_id),
constraint fk_employees_people_person_id foreign key (person_id) references ds.people(person_id),
constraint fk_employees_job_titles_job_title_id foreign key (job_title_id) references ds.job_titles(job_title_id),
constraint uq_employees_person_id unique (person_id),
);

insert into ds.employees (person_id, job_title_id, hire_date, salary, is_active)
values 
(1, 1, '2024-01-15', 7500.00, 1), -- Ahmed (person 1) as store_manager
(2, 2, '2024-06-01', 3500.00, 1), -- Fatima (person 2) as sales_representative
(7, 3, '2025-03-10', 4200.00, 1); -- Yousef (person 7) as hardware_technician

select ds.employees.*
from ds.employees;