use devices_store_db;

go
create view ds.view_devices as
select
	ds.devices.device_id,
	ds.devices.model_id,
	ds.models.model_name,
	ds.models.release_year,
	ds.models.manufacturer_id,
	ds.manufacturers.manufacturer_name,
	ds.devices.device_category_id,
	ds.device_categories.device_category_name,
	ds.devices.device_status_id,
	ds.device_statuses.device_status_name,
	ds.devices.power_source_id,
	ds.power_sources.power_source_name,
	ds.devices.serial_number,
	ds.devices.sale_price,
	ds.devices.purchase_date
from ds.devices
left join ds.models on ds.devices.model_id = ds.models.model_id
left join ds.manufacturers on ds.models.manufacturer_id = ds.manufacturers.manufacturer_id
left join ds.device_categories on ds.devices.device_category_id = ds.device_categories.device_category_id
left join ds.device_statuses on ds.devices.device_status_id = ds.device_statuses.device_status_id
left join ds.power_sources on ds.devices.power_source_id = ds.power_sources.power_source_id;
go

select ds.view_devices.*
from ds.view_devices;