use devices_store_db;

go
create view ds.view_employees as
select
	ds.employees.employee_id,
	ds.people.*,
	ds.employees.job_title_id,
	ds.job_titles.job_title_name,
	ds.employees.salary,
	ds.employees.hire_date,
	ds.employees.is_active
from ds.employees
left join ds.people on ds.employees.person_id = ds.people.person_id
left join ds.job_titles on ds.employees.job_title_id = ds.job_titles.job_title_id;
go

select ds.view_employees.*
from ds.view_employees;