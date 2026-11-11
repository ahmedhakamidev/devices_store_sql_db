use devices_store_db;

create table ds.models
(
model_id int identity (1, 1),
manufacturer_id int not null,
model_name varchar(50) not null,
release_year smallint null,

-- constraints
constraint pk_models_model_id primary key (model_id),
constraint fk_models_manufacturers_manufacturer_id foreign key (manufacturer_id) references ds.manufacturers (manufacturer_id)
);

insert into ds.models (manufacturer_id, model_name, release_year)
values
(1, 'elitebook 840 g8', 2021),      -- hp
(2, 'xps 13 plus', 2022),           -- dell
(3, 'thinkpad t14 gen 3', 2022),    -- lenovo
(4, 'macbook pro 16', 2023),        -- apple
(5, 'galaxy s24 ultra', 2024),      -- samsung
(6, 'optix g271 monitor', 2020),    -- msi
(7, 'rog zephyrus g14', 2023),      -- asus
(8, 'hl-l2350dw printer', 2017),    -- brother
(9, 'matebook x pro', 2022),        -- huawei
(10, 'catalyst 9300 switch', 2018); -- cisco

select ds.models.*
from ds.models;