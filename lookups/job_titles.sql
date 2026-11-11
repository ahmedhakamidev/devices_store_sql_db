use devices_store_db

create table ds.job_titles
(
job_title_id int identity (1, 1),
job_title_name varchar(50) not null,

-- constraints
constraint pk_job_titles_job_title_id primary key (job_title_id),
constraint uq_job_titles_job_title_name unique (job_title_name)
);

insert into ds.job_titles (job_title_name)
values 
('store_manager'),
('sales_representative'),
('hardware_technician'),
('cashier');

select ds.job_titles.*
from ds.job_titles
order by job_title_id asc;