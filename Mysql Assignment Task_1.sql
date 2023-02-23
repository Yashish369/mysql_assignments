Create database	Shopping

use shopping

create table shopping_history (
`Product` varchar (30) not null,
`Quantity` int not null,
`Unit_Price` int not null);

insert into shopping_history values ('Lays', 10, 10),
('Kurkure', 7, 5),
('PargleG', 20, 5),
('Sunfeast', 15, 10),
('Lays', 25, 5),
('Yippie', 14, 12),
('ParleG', 18, 10),
('UncleChips', 12, 25),
('Maggie', 12, 14),
('Tadka', 30, 5);

select * from shopping_history

select product, sum(unit_price*quantity) as total_price from shopping_history group by product order by product desc
