show databases;

use mysql;

create table Dance(
    SNo int,
    FName varchar(255),
    Class varchar(30)
);

insert into
    Dance
values
(1, 'Astha', '7A');

insert into
    Dance
values
(2, 'Mahira', '6A');

insert into
    Dance
values
(3, 'Mohit', '7B');

insert into
    Dance
values
(4, 'Sanjay', '7A');

select
    *
from
    Dance;

create table Music(
    SNo int,
    FName varchar(255),
    Class varchar(30)
);

insert into
    Music
values
(1, 'Mehak', '8A');

insert into
    Music
values
(2, 'Mahira', '6A');

insert into
    Music
values
(3, 'Lavanya', '7A');

insert into
    Music
values
(4, 'Sanjay', '7A');

insert into
    Music
values
(5, 'Abhay', '8A');

select
    *
from
    music;

-- Dance Union Music
-- Union for distinct values
select
    *
from
    music
UNION
select
    *
from
    dance;

-- Union ALL for all values (includes duplicates values too)
select
    *
from
    music
UNION
ALL
select
    *
from
    dance;

-- Intersection Command
select
    *
from
    Music
intersect
select
    *
from
    dance;

-- Minus operator
select
    SNo
from
    music
minus
select
    SNo
from
    dance;

-- Cartesian Join
select
    *
from
    music
    cross join dance;