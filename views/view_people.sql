use devices_store_db;

go
create view ds.view_people as
select
    ds.people.person_id,
    ds.people.first_name, 
    ds.people.last_name, 
    ds.people.gender, 
    ds.people.email, 
    ds.people.birth_date,
    ds.people.nationality_id, 
    ds.countries.country_name, 
    ds.countries.iso_code, 
    ds.countries.phone_code
from ds.people
left join ds.countries on ds.people.nationality_id = ds.countries.country_id;

select ds.view_people.*
from ds.view_people;