use devices_store_db;

go
create view ds.view_transactions as
select
	ds.transactions.transaction_id,
	ds.view_sales.*,
	ds.transactions.transaction_type_id,
	ds.transaction_types.transaction_type_name,
	ds.transactions.amount,
	ds.transactions.transaction_datetime,
	ds.transactions.transaction_description
from ds.transactions
left join ds.view_sales on ds.transactions.sale_id = ds.view_sales.sale_id
left join ds.transaction_types on ds.transactions.transaction_type_id = ds.transaction_types.transaction_type_id;
go

select ds.view_transactions.*
from ds.view_transactions;