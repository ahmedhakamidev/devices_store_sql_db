use devices_store_db;

create table ds.customer_statuses
(
customer_status_id int identity(1,1),
customer_status_name varchar(50) not null,

--
constraint pk_customer_statuses_customer_status_id primary key (customer_status_id),
constraint uq_customer_statuses_customer_status_name unique (customer_status_name)
);

insert into ds.customer_statuses (customer_status_name)
values 
('active'),
('inactive'),
('suspended'),
('blacklisted'),
('pending');

select ds.customer_statuses.*
from ds.customer_statuses
order by ds.customer_statuses.customer_status_id asc;