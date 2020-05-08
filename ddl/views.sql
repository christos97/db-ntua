create view Frequently_bought_together as
select tab2.nam1, tab2.nam2, tab1.cnt  from
(select t1.Barcode as Prod1, t2.Barcode as Prod2, count(*) as cnt from TransactionContainsProduct t1 join TransactionContainsProduct t2 on t1.Trans_id = t2.Trans_id and t1.Barcode < t2.Barcode group by Prod1 , Prod2 order by count(*) desc limit 10) tab1
left join
(select p1.Barcode as bar1, p2.Barcode as bar2, p1.Name as nam1, p2.Name as nam2 from Products p1 left join Products p2 on p1.Barcode < p2.Barcode) tab2
on tab1.Prod1 = tab2.bar1 and tab1.Prod2 = tab2.bar2;
create view Top_selling_spots as
select tab2.Alley, tab2.Shelf, sum(tab1.sells) as place_sells from
(select Barcode as bar, sum(Piecies) as sells, Store_id from TransactionContainsProduct left join Transaction on TransactionContainsProduct.Trans_id = Transaction.Trans_id group by TransactionContainsProduct.Barcode, Transaction.Store_id
) tab1
left join
StoreOffersProduct tab2
on (tab1.Store_id = tab2.Store_id and tab1.bar = tab2.Barcode) group by tab2.Alley, tab2.Shelf
order by place_sells desc 
limit 10;  
create view Most_visited_hours_per_age_pracket as
select tab3.Age_range, tab3.Time_range, count(tab3.Time_range) as Visits
from
(select tab2.age_range as Age_range, case 
	when Time(tab1.Date_time) >='09:00:00' and Time(tab1.Date_time) <'10:00:00' then '[09:00:00,10:00:00)'
	when Time(tab1.Date_time) >='10:00:00' and Time(tab1.Date_time) <'11:00:00' then '[10:00:00,11:00:00)'
	when Time(tab1.Date_time) >='11:00:00' and Time(tab1.Date_time) <'12:00:00' then '[11:00:00,12:00:00)'
	when Time(tab1.Date_time) >='12:00:00' and Time(tab1.Date_time) <'13:00:00' then '[12:00:00,13:00:00)'
	when Time(tab1.Date_time) >='13:00:00' and Time(tab1.Date_time) <'14:00:00' then '[13:00:00,14:00:00)'
	when Time(tab1.Date_time) >='14:00:00' and Time(tab1.Date_time) <'15:00:00' then '[14:00:00,15:00:00)'
	when Time(tab1.Date_time) >='15:00:00' and Time(tab1.Date_time) <'16:00:00' then '[15:00:00,16:00:00)'
	when Time(tab1.Date_time) >='16:00:00' and Time(tab1.Date_time) <'17:00:00' then '[16:00:00,17:00:00)'
	when Time(tab1.Date_time) >='17:00:00' and Time(tab1.Date_time) <'18:00:00' then '[17:00:00,18:00:00)'
	when Time(tab1.Date_time) >='18:00:00' and Time(tab1.Date_time) <'19:00:00' then '[18:00:00,19:00:00)'
	when Time(tab1.Date_time) >='19:00:00' and Time(tab1.Date_time) <'20:00:00' then '[19:00:00,20:00:00)'
	when Time(tab1.Date_time) >='20:00:00' and Time(tab1.Date_time) <='21:00:00' then '[20:00:00,21:00:00]'
end as Time_range
from
(select Card, Date_time from Transaction) tab1
left join 
(select Card, case 
	when Date_of_birth >= '1990-01-01' then '<=30'
	when Date_of_birth < '1990-01-01' and Date_of_birth >= '1975-01-01' then '31-45'
	when Date_of_birth < '1975-01-01' and Date_of_birth>= '1955-01-01' then '46-65'
	else '65+' end as age_range 
from Customer) tab2
on tab1.Card = tab2.Card) tab3
group by tab3.Age_range, tab3.Time_range
order by tab3.Time_range;
create view Prefered_products_per_category as
select Products.Category_id, sum(Products.Store_label) / count(*) as Percentage 
from TransactionContainsProduct left join Products on TransactionContainsProduct.Barcode = Products.Barcode 
group by Products.Category_id order by Category_id; 
create view Most_profitable_hours as
select case
	when Time(Date_time) >='09:00:00' and Time(Date_time) <'10:00:00' then '[09:00:00,10:00:00)'
	when Time(Date_time) >='10:00:00' and Time(Date_time) <'11:00:00' then '[10:00:00,11:00:00)'
	when Time(Date_time) >='11:00:00' and Time(Date_time) <'12:00:00' then '[11:00:00,12:00:00)'
	when Time(Date_time) >='12:00:00' and Time(Date_time) <'13:00:00' then '[12:00:00,13:00:00)'
	when Time(Date_time) >='13:00:00' and Time(Date_time) <'14:00:00' then '[13:00:00,14:00:00)'
	when Time(Date_time) >='14:00:00' and Time(Date_time) <'15:00:00' then '[14:00:00,15:00:00)'
	when Time(Date_time) >='15:00:00' and Time(Date_time) <'16:00:00' then '[15:00:00,16:00:00)'
	when Time(Date_time) >='16:00:00' and Time(Date_time) <'17:00:00' then '[16:00:00,17:00:00)'
	when Time(Date_time) >='17:00:00' and Time(Date_time) <'18:00:00' then '[17:00:00,18:00:00)'
	when Time(Date_time) >='18:00:00' and Time(Date_time) <'19:00:00' then '[18:00:00,19:00:00)'
	when Time(Date_time) >='19:00:00' and Time(Date_time) <'20:00:00' then '[19:00:00,20:00:00)'
	when Time(Date_time) >='20:00:00' and Time(Date_time) <='21:00:00' then '[20:00:00,21:00:00]'
end as Time_range, sum(Total_amount) as profit
from Transaction
group by Time_range
order by Time_range;