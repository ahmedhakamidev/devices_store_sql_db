use devices_store_db;

go
create view ds.view_customers as
select
	ds.customers.customer_id,
	ds.view_people.*,
	ds.customers.customer_status_id,
	ds.customer_statuses.customer_status_name,
	ds.customers.registration_date,
	ds.customers.notes
from ds.customers
left join ds.view_people on ds.customers.person_id = ds.view_people.person_id
left join ds.customer_statuses on ds.customers.customer_status_id = ds.customer_statuses.customer_status_id;
go

select ds.view_customers.*
from ds.view_customers;