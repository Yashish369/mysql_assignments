Create database	call_details

use call_details

create table phones (
`Name` varchar (30) unique,
`Phone_Number` int not null unique); 

insert into phones values ('Ram', 9321),
('Shyam', 5120),
('Krishna', 3328),
('Mohan', 1744),
('Madan', 5827),
('Kaniya', 1607),
('Gopal', 7860);

create table calls (
`ID` int unique,
`Caller` int not null,
`Callee` int not null,
`Duration` int not null);

insert into calls values (974381, 9321, 1607, 2),
(943524, 1607, 1744, 5),
(459604, 7860, 1607, 3),
(917236, 5827, 3328, 5),
(657593, 3328, 5120, 2),
(90717, 5120, 1744, 1),
(556103, 3328, 9321, 2),
(535751, 7860, 1607, 3),
(658607, 1744, 5120, 4),
(510705, 1607, 9321, 7);

select * from phones
select * from calls

with total_time as (
select id, caller as caller_callee, duration, name, phone_number from (select id, caller, duration from calls
union all
select id, callee, duration from calls) as table1
right join phones on table1.caller = phones.phone_number) select name from total_time 
group by caller_callee having sum(duration) >= 10
