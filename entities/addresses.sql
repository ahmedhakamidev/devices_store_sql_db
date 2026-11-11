use devices_store_db;

create table ds.addresses
(
address_id int identity(1, 1),
country_id int not null,
address_type_id int not null,
region varchar(50) null,
city varchar(50) null,
district varchar(50) null,
street_name varchar(50) null,
building_number varchar(20) null,
postal_code varchar(20) null,

-- constraints
constraint pk_addresses_address_id primary key (address_id),
constraint fk_addresses_countries_country_id foreign key (country_id) references ds.countries(country_id),
constraint fk_addresses_address_types_address_type_id foreign key (address_type_id) references ds.address_types(address_type_id)
);

insert into ds.addresses (country_id, address_type_id, region, city, district, street_name, building_number, postal_code)
values 
(1, 1, 'amman governorate', 'amman', 'sweifieh', 'wakalat st', '12', '11183'),
(5, 2, 'riyadh region', 'riyadh', 'al malaz', 'king abdullah rd', '402', '11451'),
(1, 3, 'amman governorate', 'amman', 'abdali', 'king hussein st', '45', '11111'),

(2, 1, 'damascus governorate', 'damascus', 'mezzeh', 'autostrad st', '25', '00963'),
(1, 2, 'amman governorate', 'amman', 'al-shmeisani', 'abdul hamid sharaf st', '8', '11194'),

(3, 1, 'amanat al asimah', 'sana''a', 'hadda', 'algeria st', '19', '96701'),
(4, 1, 'cairo governorate', 'cairo', 'zamalek', '26 july st', '14', '11211'),
(5, 1, 'riyadh region', 'riyadh', 'al olaya', 'olaya st', '120', '12211'),
(6, 1, 'baghdad governorate', 'baghdad', 'mansour', '14 ramadan st', '22', '10011'),
(7, 1, 'ankara province', 'ankara', 'cankaya', 'ataturk blvd', '88', '06420'),
(8, 1, 'muscat governorate', 'muscat', 'al khuwair', 'sultan qaboos st', '78', '113');

select ds.addresses.*
from ds.addresses;