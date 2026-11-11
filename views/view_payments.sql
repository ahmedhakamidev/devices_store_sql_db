use devices_store_db;

go
create view ds.view_payments as
select
	ds.payments.payment_id,
	ds.view_transactions.*,
	ds.payments.payment_method_id,
	ds.payment_methods.payment_method_name
from ds.payments
left join ds.view_transactions on ds.payments.transaction_id = ds.view_transactions.transaction_id
left join ds.payment_methods on ds.payments.payment_method_id = ds.payment_methods.payment_method_id;
go

select ds.view_payments.*
from ds.view_payments;