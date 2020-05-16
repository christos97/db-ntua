/*Products sold per category*/
/*!!PROSOXH GIA NA DOULEPSEI AUTH H MALAKIA PREPEI NA BALEiS st_id = to id tou store p thes*/
set @st_id := 1;
select tab6.i as Category, tab6.s / tab17.ss as '% of sold products' from
(select tab5.id as i, sum(tab5.pcs) as s from
(select tab4.Category_id as id,  tab3.pcs as pcs from
((select tab1.Barcode as bar, tab1.Piecies as pcs from
((select Trans_id from Transaction where Store_id = @st_id) tab2
left join
(select Trans_id, Barcode, Piecies from TransactionContainsProduct ) tab1
on tab1.Trans_id = tab2.Trans_id)) tab3
left join
(select Barcode, Category_id from Products) tab4
on tab3.bar = tab4.Barcode )) tab5
group by tab5.id) tab6
cross join (select sum(s) as ss from ((select tab15.id as i, sum(tab15.pcs) as s from
(select tab14.Category_id as id,  tab13.pcs as pcs from
((select tab11.Barcode as bar, tab11.Piecies as pcs from
((select Trans_id from Transaction where Store_id = @st_id) tab12
left join
(select Trans_id, Barcode, Piecies from TransactionContainsProduct ) tab11
on tab11.Trans_id = tab12.Trans_id)) tab13
left join
(select Barcode, Category_id from Products) tab14
on tab13.bar = tab14.Barcode )) tab15
group by tab15.id) tab16)) tab17;

/*Customer Visiting hours*/

set @cust_card = 1;
select tab2.Time_range, count(tab2.Time_range) as cnt from
(select case
	when Time(tab1.Date_time) >='09:00:00' and Time(tab1.Date_time) <'10:00:00' then 1
	when Time(tab1.Date_time) >='10:00:00' and Time(tab1.Date_time) <'11:00:00' then 2
	when Time(tab1.Date_time) >='11:00:00' and Time(tab1.Date_time) <'12:00:00' then 3
	when Time(tab1.Date_time) >='12:00:00' and Time(tab1.Date_time) <'13:00:00' then 4
	when Time(tab1.Date_time) >='13:00:00' and Time(tab1.Date_time) <'14:00:00' then 5
	when Time(tab1.Date_time) >='14:00:00' and Time(tab1.Date_time) <'15:00:00' then 6
	when Time(tab1.Date_time) >='15:00:00' and Time(tab1.Date_time) <'16:00:00' then 7
	when Time(tab1.Date_time) >='16:00:00' and Time(tab1.Date_time) <'17:00:00' then 8
	when Time(tab1.Date_time) >='17:00:00' and Time(tab1.Date_time) <'18:00:00' then 9
	when Time(tab1.Date_time) >='18:00:00' and Time(tab1.Date_time) <'19:00:00' then 10
	when Time(tab1.Date_time) >='19:00:00' and Time(tab1.Date_time) <'20:00:00' then 11
	when Time(tab1.Date_time) >='20:00:00' and Time(tab1.Date_time) <='21:00:00' then 12
end as Time_range
from (select Date_time from Transaction where Transaction.Card = @cust_card) tab1) tab2
group by tab2.Time_range
order by tab2.Time_range;

/*top 10 products per customer*/

set @cust_card = 2;
select tab3.Barcode, tab4.Name, tab4.Brand_name, tab3.Total_piecies from
(select Barcode, sum(Piecies) as Total_piecies from
((select Trans_id from Transaction where Card = @cust_card) tab1
left join
(select Trans_id, Barcode, Piecies from TransactionContainsProduct) tab2
on tab1.Trans_id = tab2.Trans_id)
group by Barcode
order by Total_piecies desc
limit 10) tab3
left join
(select Name, Brand_name, Barcode from Products) tab4
on tab3.Barcode = tab4.Barcode;

/*amount/transactions per week for customer*/
set @cust_card = 2;
select week(Date_time) as Week_no, sum(Total_amount) / count(week(Date_time)) as Avrg from Transaction where Card = @cust_card
group by week(Date_time);

/*amount/transactions per month for customer*/
set @cust_card = 2;
select month(Date_time) as Month_no, sum(Total_amount) / count(month(Date_time)) as Avrg from Transaction where Card = @cust_card
group by month(Date_time);
