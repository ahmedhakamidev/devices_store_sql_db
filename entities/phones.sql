use devices_store_db;

create table ds.phones
(
phone_id int identity(1, 1), --seed, increment,
person_id int not null,
country_id int not null,
phone_type_id int not null,
phone_number varchar(20) not null,
is_primary bit not null default 0,
is_active bit not null default 0,

-- constraints
constraint pk_phones_phone_id primary key (phone_id),
constraint fk_phones_people_person_id foreign key (person_id) references ds.people(person_id),
constraint fk_phones_countries_country_id foreign key (country_id) references ds.countries(country_id),
constraint fk_phones_phone_types_phone_type_id foreign key (phone_type_id) references ds.phone_types(phone_type_id)
);

insert into ds.phones (person_id, country_id, phone_type_id, phone_number, is_primary, is_active)
values 
-- Person 1 (Ahmed): Mobile, Home, Work
(1, 1, 1, '+962795551234', 1, 1), -- Jordan
(1, 1, 2, '+96265512345', 0, 1), -- Jordan
(1, 5, 3, '+966118889999', 0, 1), -- Saudi Arabia

-- Person 2 (Fatima): Mobile, Work
(2, 2, 1, '+963933338888', 1, 1), -- Syria
(2, 1, 3, '+962677778888', 0, 1), -- Jordan

-- Persons 3 - 8: Mobile only
(3, 3, 1, '+967711234567', 1, 1), -- Yemen
(4, 4, 1, '+201098765432', 1, 1), -- Egypt
(5, 5, 1, '+966501234567', 1, 1), -- Saudi Arabia
(6, 6, 1, '+964781234567', 1, 1), -- Iraq
(7, 7, 1, '+905321234567', 1, 1), -- Turkey
(8, 8, 1, '+96892123456', 1, 1);  -- Oman

-- Persons 9 & 10: No phone records inserted

select ds.phones.*
from ds.phones;