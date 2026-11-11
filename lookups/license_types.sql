use devices_store_db;

create table ds.license_types
(
license_type_id int identity (1, 1),
license_type_name varchar(50) not null,

--
constraint pk_license_types_license_type_id primary key (license_type_id),
constraint uq_license_types_license_type_name unique (license_type_name)
);

insert into ds.license_types (license_type_name)
values 
('national id'),
('passport'),
('driver license'),
('resident identity'),
('commercial register'),
('employee badge');

select ds.license_types.*
from ds.license_types
order by ds.license_types.license_type_id;