use devices_store_db;

create table ds.devices
(
device_id int identity (1, 1),
model_id int not null,
device_category_id int not null,
device_status_id int not null,
power_source_id int not null,
serial_number varchar (20) not null,
sale_price decimal (10, 2) not null,
purchase_date datetime default sysdatetime(),

-- constraints
constraint pk_devices_device_id primary key (device_id),
constraint uq_devices_serial_number unique (serial_number),

constraint fk_devices_models_model_id foreign key (model_id) references ds.models (model_id),
constraint fk_devices_device_categories_device_category_id foreign key (device_category_id) references ds.device_categories (device_category_id),
constraint fk_devices_device_statuses_device_status_id foreign key (device_status_id) references ds.device_statuses (device_status_id),
constraint fk_devices_power_sources_power_source_id foreign key (power_source_id) references ds.power_sources (power_source_id),
);

insert into ds.devices (model_id, device_category_id, device_status_id, power_source_id, serial_number, sale_price, purchase_date)
values
(1, 1, 1, 4, 'hp-eb840-sn001', 1200.00, '2026-09-15'),      -- HP Elitebook (Laptop, In Stock, USB-C)
(2, 1, 1, 4, 'dl-xps13-sn092', 1500.00, '2026-10-01'),      -- Dell XPS 13 (Laptop, In Stock, USB-C)
(5, 4, 1, 1, 'sm-s24u-sn883', 1100.00, '2026-10-10'),       -- Galaxy S24 Ultra (Smartphone, In Stock, Internal Battery)
(6, 5, 1, 2, 'msi-optix-sn404', 250.00, '2026-08-20'),      -- MSI Monitor (Display, In Stock, AC Power)
(10, 7, 1, 2, 'csc-cat9300-sn555', 3500.00, '2026-01-10');  -- Cisco Switch (Network, In Stock, AC Power)

select ds.devices.*
from ds.devices;