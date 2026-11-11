use devices_store_db;

create table ds.device_statuses
(
device_status_id int identity (1, 1),
device_status_name varchar (50) not null,

--
constraint pk_device_statuses_device_status_id primary key (device_status_id),
constraint uq_device_statuses_device_status_name unique (device_status_name)
);

insert into ds.device_statuses (device_status_name)
values
('available'),
('sold'),
('reserved'),
('repairing'),
('defective'),
('returned'),
('in_transit');

select ds.device_statuses.*
from ds.device_statuses
order by ds.device_statuses.device_status_id;