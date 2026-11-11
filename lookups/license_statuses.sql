use devices_store_db;

create table ds.license_statuses
(
license_status_id int identity (1, 1),
license_status_name varchar(50) not null,

--
constraint pk_license_statuses_license_status_id primary key (license_status_id),
constraint uq_license_statuses_status_name unique (license_status_name)
);

insert into ds.license_statuses (license_status_name)
values 
('valid'),
('expired'),
('suspended'),
('revoked');

select ds.license_statuses.*
from ds.license_statuses
order by ds.license_statuses.license_status_id;