use mysql;

create table Activity(
    ACode int,
    ActivityName varchar(255),
    Stadium varchar(255),
    ParticipantsNum int,
    PrizeMoney int,
    ScheduleDate date
);

create table Coach(
    PCode int,
    CName varchar(255),
    ACode int
);

insert into
    Activity
values
(
        1001,
        'Relay',
        'Star Annex',
        16,
        10000,
        '2004-01-23'
    );

insert into
    Activity
values
(
        1002,
        'High Jump',
        'Star Annex',
        10,
        12000,
        '2003-12-12'
    );

insert into
    Activity
values
(
        1003,
        'Shot Put',
        'Super Power',
        12,
        8000,
        '2004-02-14'
    );

insert into
    Activity
values
(
        1005,
        'Long Jump',
        'Star Annex',
        12,
        9000,
        '2004-01-01'
    );

insert into
    Activity
values
(
        1008,
        'Discuss Throw',
        'Super Power',
        10,
        15000,
        '2004-03-19'
    );

select
    *
from
    Activity;

insert into
    Coach
values
(1, 'Ahmed Hussain', 1001);

insert into
    Coach
values
(2, 'Ravinder', 1008);

insert into
    Coach
values
(3, 'Jila', 1001);

insert into
    Coach
values
(4, 'Naaz', 1003);

-- Problem One
select
    ActivityName,
    ACode
from
    Activity
ORDER BY
    ACode;

-- Problem Two
select
    sum(PrizeMoney),
    Stadium
from
    Activity
Group By
    Stadium;

-- Problem Three
select
    CName,
    Acode
from
    Coach
order by
    Acode;