Create database	bank_transactions;

use bank_transactions;

create table transactions (
`amount` int not null,
`date` date not null)

insert into transactions (amount, date) values (1000, '2020-01-06'),(-10, '2020-01-14'),(-75, '2020-01-20'),
(-5, '2020-01-25'),(-4, '2020-01-29'),(2000, '2020-03-10'),(-75, '2020-03-12'),(-20, '2020-01-15'),
(40, '2020-03-15'),(-50, '2020-03-17'),(200, '2020-10-10'),(-200, '2020-10-10');

select * from transactions;

SELECT sum(amount) - 5*(12 - (SELECT count(*) FROM (SELECT count(*),sum(amount) FROM transactions 
WHERE amount < 0 GROUP BY MONTH(DATE) 
HAVING count(amount) >= 3 AND sum(amount) <= - 100) AS card_fee)) AS balance FROM transactions;
