use devices_store_db;

go
create view ds.view_phones as
select
	ds.phones.phone_id,
	ds.view_people.*,
	ds.phones.phone_type_id,
	ds.phone_types.phone_type_name,
	ds.phones.phone_number,
	ds.phones.is_primary,
	ds.phones.is_active
from ds.phones
left join ds.view_people on ds.phones.person_id = ds.view_people.person_id
left join ds.phone_types on ds.phones.phone_type_id = ds.phone_types.phone_type_id;
go

select ds.view_phones.*
from ds.view_phones;