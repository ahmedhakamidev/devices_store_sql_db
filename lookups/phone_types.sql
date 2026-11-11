use devices_store_db;

create table ds.phone_types
(
phone_type_id int identity (1, 1),
phone_type_name varchar(50) not null,

--
constraint pk_phone_types_phone_type_id primary key (phone_type_id),
constraint uq_phone_types_phone_type_name unique (phone_type_name)
);

insert into ds.phone_types (phone_type_name)
values 
('mobile'),
('home'),
('work'),
('fax'),
('emergency');

select ds.phone_types.*
from ds.phone_types
order by ds.phone_types.phone_type_id;