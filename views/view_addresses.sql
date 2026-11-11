use devices_store_db;

go
create view ds.view_addresses as
select
	ds.addresses.address_id,
	ds.addresses.country_id,
	ds.countries.country_name,
	ds.countries.iso_code,
	ds.countries.phone_code,
	ds.addresses.address_type_id,
	ds.address_types.address_type_name,
	ds.addresses.region,
	ds.addresses.city,
	ds.addresses.district,
	ds.addresses.street_name,
	ds.addresses.building_number,
	ds.addresses.postal_code
from ds.addresses
left join ds.countries on ds.addresses.country_id = ds.countries.country_id
left join ds.address_types on ds.addresses.address_type_id = ds.address_types.address_type_id;
go

select ds.view_addresses.*
from ds.view_addresses;