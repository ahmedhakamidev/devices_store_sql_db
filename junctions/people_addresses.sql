use devices_store_db;

create table ds.people_addresses
(
person_address_id int identity (1, 1),
person_id int not null,
address_id int not null,

-- constraints
constraint pk_people_addresses_person_address_id primary key (person_address_id),
constraint uq_people_addresses_person_address unique (person_id, address_id),
constraint fk_people_addresses_person_id foreign key (person_id) references ds.people (person_id),
constraint fk_people_addresses_address_id foreign key (address_id) references ds.addresses (address_id)
);

insert into ds.people_addresses (person_id, address_id)
values
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11);

select ds.people_addresses.*
from ds.people_addresses;