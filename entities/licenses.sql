use devices_store_db;

create table ds.licenses
(
license_id int identity(1, 1), --seed, increment
person_id int not null,
license_type_id int not null,
license_status_id int not null,
issuing_country_id int not null,
license_number varchar(20) not null,
issuing_date date,
expire_date date,

-- constraints
constraint pk_license_id primary key (license_id),
constraint fk_licenses_people foreign key (person_id) references ds.people(person_id),
constraint fk_licenses_license_types foreign key (license_type_id) references ds.license_types(license_type_id),
constraint fk_licenses_license_statuses foreign key (license_status_id) references ds.license_statuses(license_status_id),
constraint fk_licenses_countries foreign key (issuing_country_id) references ds.countries(country_id)
);

insert into ds.licenses (person_id, license_type_id, license_status_id, issuing_country_id, license_number, issuing_date, expire_date)
values 
-- Person 1 (Ahmed): 3 licenses (Private, Commercial, International) issued in Jordan
(1, 1, 1, 1, 'LIC-10001', '2020-01-15', '2025-01-15'),
(1, 2, 1, 1, 'LIC-10002', '2020-01-15', '2025-01-15'),
(1, 3, 1, 1, 'LIC-10003', '2022-06-10', '2027-06-10'),

-- Person 2 (Fatima: 2 licenses (Private, Commercial) issued in Syria
(2, 1, 1, 2, 'LIC-20001', '2019-05-20', '2024-05-20'),
(2, 2, 1, 2, 'LIC-20002', '2021-08-11', '2026-08-11'),

-- Persons 3 to 8: 1 license
(3, 1, 1, 3, 'LIC-30001', '2018-03-01', '2023-03-01'), -- Yemen
(4, 1, 1, 4, 'LIC-40001', '2022-11-05', '2027-11-05'), -- Egypt
(5, 1, 1, 5, 'LIC-50001', '2017-07-19', '2022-07-19'), -- Saudi Arabia
(6, 1, 1, 6, 'LIC-60001', '2023-01-10', '2028-01-10'), -- Iraq
(7, 1, 1, 7, 'LIC-70001', '2019-09-25', '2024-09-25'), -- Turkey
(8, 1, 1, 8, 'LIC-80001', '2021-04-14', '2026-04-14'); -- Oman

-- Persons 9 & 10 don't have license

select ds.licenses.*
from ds.licenses;