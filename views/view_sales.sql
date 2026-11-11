use devices_store_db;

go
alter view ds.view_sales as
select
	ds.sales.sale_id,
	ds.view_customers.*,
	ds.view_devices.*,
	ds.sales.sale_date,
	ds.sales.final_price
from ds.sales
left join ds.view_customers on ds.sales.customer_id = ds.view_customers.customer_id
left join ds.view_devices on ds.sales.device_id = ds.view_devices.device_id;
go

select ds.view_sales.*
from ds.view_sales;