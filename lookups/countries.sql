use devices_store_db;

create table ds.countries
(
country_id int identity (1, 1),
country_name varchar(50) not null,
iso_code char(2) not null,
phone_code varchar(5) not null,

--
constraint pk_countries_country_id primary key (country_id),
constraint uq_countries_country_name unique (country_name),
constraint uq_countries_iso_code unique (iso_code),
constraint uq_countries_phone_code unique (phone_code)
);

insert into ds.countries (country_name, iso_code, phone_code)
values 
('jordan', 'jo', '+962'),
('syria', 'sy', '+963'),
('yemen', 'ye', '+967'),
('egypt', 'eg', '+20'),
('saudi arabia', 'sa', '+966'),
('iraq', 'iq', '+964'),
('turkey', 'tr', '+90'),
('oman', 'om', '+968'),
('algeria', 'dz', '+213'),
('morocco', 'ma', '+212');

select ds.countries.*
from ds.countries;