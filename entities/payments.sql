use devices_store_db;

create table ds.payments
(
payment_id int identity(1, 1), --seed, increment,
transaction_id int not null,
payment_method_id int not null,
--reference_number

-- constraints
constraint pk_payment_id primary key(payment_id),
constraint fk_transaction_id foreign key(transaction_id) references ds.transactions(transaction_id),
constraint fk_payment_method_id foreign key(payment_method_id) references ds.payment_methods(payment_method_id)
);

insert into ds.payments (transaction_id, payment_method_id)
values
(1, 5), -- ahmed used apple pay for this transaction
(2, 6), -- ahmed used google pay
(3, 8), -- ahmed used paypal
(4, 1), -- fatima used cash
(5, 2); -- fatima used credit card

select ds.payments.*
from ds.payments;