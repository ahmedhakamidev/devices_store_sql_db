use devices_store_db;

go
create view ds.view_people_addresses as
select
	ds.people_addresses.person_address_id,
	ds.view_people.person_id,
	ds.view_people.first_name,
	ds.view_people.last_name,
	ds.view_people.gender,
	ds.view_people.email,
	ds.view_people.birth_date,
	ds.view_people.nationality_id,
	ds.view_people.country_name,
	ds.view_people.iso_code,
	ds.view_people.phone_code,
	
	ds.view_addresses.address_id,
	ds.view_addresses.country_id as address_country_id,
	ds.view_addresses.country_name as address_country_name,
	ds.view_addresses.iso_code as address_iso_code,
	ds.view_addresses.phone_code as address_phone_code,
	ds.view_addresses.region,
	ds.view_addresses.city,
	ds.view_addresses.district,
	ds.view_addresses.street_name,
	ds.view_addresses.building_number,
	ds.view_addresses.postal_code
from ds.people_addresses
left join ds.view_people on ds.people_addresses.person_id = ds.view_people.person_id
left join ds.view_addresses on ds.people_addresses.address_id = ds.view_addresses.address_id;
go

select ds.view_people_addresses.*
from ds.view_people_addresses;