use devices_store_db;

create table ds.address_types
(
address_type_id int identity (1, 1), -- seed, increment
address_type_name varchar(50) not null,

--
constraint pk_address_types_address_type_id primary key (address_type_id),
constraint uq_address_types_address_type_name unique (address_type_name)
);

insert into ds.address_types (address_type_name)
values 
('home'),
('work'),
('billing'),
('shipping');

select ds.address_types.*
from ds.address_types
order by ds.address_types.address_type_id asc;