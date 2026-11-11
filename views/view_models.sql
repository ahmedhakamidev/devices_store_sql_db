use devices_store_db;

go
create view ds.view_models as
select
	ds.models.model_id,
	ds.models.model_name,
	ds.models.release_year,
	ds.models.manufacturer_id,
	ds.manufacturers.manufacturer_name
from ds.models
left join ds.manufacturers on ds.models.manufacturer_id = ds.manufacturers.manufacturer_id;
go

select ds.view_models.*
from ds.view_models;