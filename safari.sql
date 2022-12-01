
drop table animals;
drop table assignments;
drop table staff;
drop table enclosures;

create table staff(
    id serial primary key,
    name varchar(255),
    employee_number int
);

create table enclosures(
    id serial primary key,
    name varchar(255),
    capacity int,
    closed_for_maintenance boolean
);
create table animals(
    id serial primary key,
    name varchar(255),
    type varchar(255),
    age int,
    enclosure_id int REFERENCES enclosures(id)
);
create table assignments(
    id serial primary key,
    employee_id int REFERENCES staff(id),
    enclosure_id int REFERENCES enclosures(id),
    day varchar(255)
);

insert into staff (name, employee_number) values('steve', 1);
insert into staff (name, employee_number) values('anna', 2);
insert into staff (name, employee_number) values('eoan', 3);
insert into staff (name, employee_number) values('ed', 4);
insert into staff (name, employee_number) values('colin', 5);

insert into enclosures (name, capacity, closed_for_maintenance) values ('big cat field', 10, false);
insert into enclosures (name, capacity, closed_for_maintenance) values ('aquarium', 100, false);
insert into enclosures (name, capacity, closed_for_maintenance) values ('bird house', 1000, false);
insert into enclosures (name, capacity, closed_for_maintenance) values ('farm', 104, true);
insert into enclosures (name, capacity, closed_for_maintenance) values ('reptiles', 106, true);

insert into animals (name, type, age, enclosure_id) values ('tony', 'tiger', 25, 1);
insert into animals (name, type, age, enclosure_id) values ('nemo', 'clownfish', 25, 2);
insert into animals (name, type, age, enclosure_id) values ('eddie', 'eagle', 3, 3);
insert into animals (name, type, age, enclosure_id) values ('percy', 'pig', 233, 4);
insert into animals (name, type, age, enclosure_id) values ('ian', 'iguana', 24, 5);

insert into assignments (employee_id, enclosure_id, day) values (1,1,'m');
insert into assignments (employee_id, enclosure_id, day) values (2,2,'tu');
insert into assignments (employee_id, enclosure_id, day) values (3,3,'w');
insert into assignments (employee_id, enclosure_id, day) values (4,4,'th');
insert into assignments (employee_id, enclosure_id, day) values (5,5,'f');

