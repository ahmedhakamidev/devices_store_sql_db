use devices_store_db;

create table ds.customers
(
customer_id int identity(1, 1), --seed, increment
person_id int not null,
customer_status_id int not null,
registration_date datetime not null default sysdatetime(),
notes nvarchar(max) null,

-- constraints
constraint pk_customer_id primary key (customer_id),
constraint fk_customers_people foreign key (person_id) references ds.people(person_id),
constraint fk_customers_customer_statuses foreign key (customer_status_id) references ds.customer_statuses(customer_status_id),
constraint uq_customers_person_id unique (person_id)
);

insert into ds.customers (person_id, customer_status_id, registration_date, notes)
values 
(1, 1, '2025-03-14', 'vip_customer'), -- ahmed
(2, 1, '2024-11-05', 'future_vip_customer'), -- fatima
(3, 1, '2025-01-22', null),
(4, 1, '2024-08-19', null),
(5, 1, '2025-06-02', null),
(6, 1, '2024-09-30', null),
(7, 1, '2025-04-11', null),
(8, 1, '2025-02-17', null),
(9, 2, '2024-12-08', null),
(10, 2, '2025-07-25', null);

select ds.customers.*
from ds.customers;