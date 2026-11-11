use devices_store_db;

create table ds.power_sources
(
power_source_id int identity (1, 1),
power_source_name varchar (50) not null,

constraint pk_power_sources_power_source_id primary key (power_source_id),
constraint uq_power_sources_power_source_name unique (power_source_name)
);

insert into ds.power_sources (power_source_name)
values
('internal_battery'),
('ac_power_adapter'),
('power_over_ethernet'),
('usb_c'),
('none');

select ds.power_sources.*
from ds.power_sources
order by ds.power_sources.power_source_id;