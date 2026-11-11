use devices_store_db;

create table ds.manufacturers
(
manufacturer_id int identity (1, 1),
manufacturer_name varchar (50) not null,

-- constraints
constraint pk_manufacturers_manufacturer_id primary key (manufacturer_id),
constraint uq_manufacturers_manufacturer_name unique (manufacturer_name)
);

insert into ds.manufacturers (manufacturer_name)
values
('hp'),
('dell'),
('lenovo'),
('apple'),
('samsung'),
('msi'),
('asus'),
('brother'),
('huawei'),
('cisco');

select ds.manufacturers.*
from ds.manufacturers
order by manufacturer_id asc;