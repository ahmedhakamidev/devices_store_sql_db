use devices_store_db;

create table ds.payment_methods
(
payment_method_id int identity (1, 1),
payment_method_name varchar(50) not null,

--
constraint pk_payment_methods_payment_method_id primary key (payment_method_id),
constraint uq_payment_methods_payment_method_name unique (payment_method_name)
);

insert into ds.payment_methods (payment_method_name)
values 
('cash'),
('credit_card'),
('debit_card'),
('mada'),
('apple_pay'),
('google_pay'),
('bank_transfer'),
('paypal');

select ds.payment_methods.*
from ds.payment_methods
order by ds.payment_methods.payment_method_id;