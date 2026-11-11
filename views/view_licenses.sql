use devices_store_db;

go
create view ds.view_licenses as
select
	ds.licenses.license_id,
	ds.view_people.*,
	ds.licenses.license_type_id,
	ds.license_types.license_type_name,
	ds.licenses.license_status_id,
	ds.license_statuses.license_status_name,
	ds.licenses.license_number,
	ds.licenses.issuing_date,
	ds.licenses.expire_date

from ds.licenses
left join ds.view_people on ds.licenses.person_id = ds.view_people.person_id
left join ds.license_types on ds.licenses.license_type_id = ds.license_types.license_type_id
left join ds.license_statuses on ds.licenses.license_status_id = ds.license_statuses.license_status_id
go

select ds.view_licenses.*
from ds.view_licenses;