use devices_store_db;

create table ds.transactions
(
transaction_id int identity (1, 1),
sale_id int not null,
transaction_type_id int not null,
amount decimal(10, 2) not null,
transaction_datetime datetime not null,
transaction_description nvarchar(max),

-- constraints
constraint pk_transactions_transaction_id primary key (transaction_id),

constraint fk_transactions_sales_sale_id foreign key (sale_id) references ds.sales (sale_id),
constraint fk_transactions_transaction_types_transaction_type_id foreign key (transaction_type_id) references ds.transaction_types (transaction_type_id)
);

insert into ds.transactions (sale_id, transaction_type_id, amount, transaction_datetime, transaction_description)
values
-- ahmed
(1, 2, 1200.00, '2026-10-27 11:22:15', 'Full payment by Ahmed for HP Elitebook'),
(2, 2, 1500.00, '2026-10-29 08:45:30', 'Full payment by Ahmed for Dell XPS'),
(3, 2, 1100.00, '2026-11-01 14:10:00', 'Full payment by Ahmed for Galaxy S24 Ultra'),

-- fatima
(4, 2, 250.00, '2026-10-31 16:05:45', 'Full payment by Fatima for MSI Monitor'),
(5, 2, 3500.00, '2026-11-02 09:30:20', 'Full payment by Fatima for Cisco Switch');

select ds.transactions.*
from ds.transactions;