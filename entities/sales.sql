use devices_store_db;

create table ds.sales
(
sale_id int identity (1, 1),
customer_id int not null,
device_id int not null,
sale_date datetime not null default sysdatetime(),
final_price decimal(10, 2) not null,

-- constraints
constraint pk_sales_sale_id primary key (sale_id),    
constraint fk_sales_devices_device_id foreign key (device_id) references ds.devices (device_id),
constraint fk_sales_customers_customer_id foreign key (customer_id) references ds.customers (customer_id)
);

insert into ds.sales (customer_id, device_id, sale_date, final_price)
values
(1, 1, '2026-10-25 10:30:00', 1200.00), -- agned buys Device 1 (HP Elitebook)
(1, 2, '2026-10-26 14:15:00', 1500.00), -- ahmed buys Device 2 (Dell XPS)
(1, 3, '2026-10-28 09:00:00', 1100.00), -- ahmed buys Device 3 (Galaxy S24 Ultra)

(2, 4, '2026-10-28 09:00:00', 250.00),  -- fatima buys Device 4 (MSI Monitor)
(2, 5, '2026-10-30 16:45:00', 3500.00); -- fatima buys Device 5 (Cisco Switch)

select ds.sales.*
from ds.sales;