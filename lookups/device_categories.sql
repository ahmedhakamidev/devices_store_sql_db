use devices_store_db;

create table ds.device_categories
(
device_category_id int identity (1, 1),
device_category_name varchar(50) not null,

constraint pk_device_categories_device_category_id primary key (device_category_id),
constraint uq_device_categories_device_category_name unique (device_category_name)
);

insert into ds.device_categories (device_category_name)
values
('laptop'),
('pc'),
('tablet'),
('smartphone'),
('monitor'),
('projector'),
('router'),
('printer'),
('accessory');

select ds.device_categories.*
from ds.device_categories
order by ds.device_categories.device_category_id asc;