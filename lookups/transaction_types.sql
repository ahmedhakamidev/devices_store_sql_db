use devices_store_db;

create table ds.transaction_types
(
transaction_type_id int identity (1, 1),
transaction_type_name varchar(50) not null,

--
constraint pk_transaction_types_transaction_type_id primary key (transaction_type_id),
constraint uq_transaction_types_transaction_type_name unique (transaction_type_name)
);

insert into ds.transaction_types (transaction_type_name)
values 
('sale'),
('payment'),
('discount'),
('penalty'),
('refund');

select ds.transaction_types.*
from ds.transaction_types
order by ds.transaction_types.transaction_type_id;