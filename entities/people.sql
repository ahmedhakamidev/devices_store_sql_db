use devices_store_db;

create table ds.people
(
person_id int identity(1, 1), 
nationality_id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender char(1) not null,
email varchar(100) not null,
birth_date date not null,

-- constraints
constraint pk_people_person_id primary key (person_id),
constraint fk_people_countries_nationality_id foreign key (nationality_id) references ds.countries(country_id),
constraint chk_people_gender check (gender in ('m', 'f')),
constraint uq_people_email unique (email)
);

insert into ds.people (nationality_id, first_name, last_name, gender, email, birth_date)
values 
(1, 'ahmed', 'alkhatib', 'm', 'ahmed.alkhatib@mail.com', '1998-05-14'),
(2, 'fatima', 'mansoor', 'f', 'fatima.almansoor@outlook.com', '2001-11-22'),
(3, 'mohammed', 'otaibi', 'm', 'mohammed.alotaibi@yahoo.com', '1995-03-09'),
(4, 'aisha', 'al-ghamdi', 'f', 'aisha.alghamdi@gmail.com', '1999-07-18'),
(5, 'omar', 'harbi', 'm', 'omar.alharbi@gmail.com', '1994-12-05'),
(6, 'zainab', 'hassan', 'f', 'zainab.hassan@hotmail.com', '2002-08-30'),
(7, 'yousef', 'al-mutairi', 'm', 'yousef.almutairi@mail.net', '1997-01-25'),
(8, 'maryam', 'dosari', 'f', 'maryam.aldosari@outlook.sa', '2000-06-11'),
(9, 'ibrahim', 'al-qahtani', 'm', 'ibrahim.alqahtani@yahoo.sa', '1993-09-17'),
(10, 'nour', 'al-shammari', 'f', 'nour.shammari@gmail.com', '2003-04-02');

select ds.people.*
from ds.people;