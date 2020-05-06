/*Frequently bought together*/
select tab2.nam1, tab2.nam2, tab1.cnt  from
(select t1.Barcode as Prod1, t2.Barcode as Prod2, count(*) as cnt from TransactionContainsProduct t1 join TransactionContainsProduct t2 on t1.Trans_id = t2.Trans_id and t1.Barcode < t2.Barcode group by Prod1 , Prod2 order by count(*) desc limit 6) tab1
left join
(select p1.Barcode as bar1, p2.Barcode as bar2, p1.Name as nam1, p2.Name as nam2 from Products p1 left join Products p2 on p1.Barcode < p2.Barcode) tab2
on tab1.Prod1 = tab2.bar1 and tab1.Prod2 = tab2.bar2;

/*Top selling Spots*/
select tab2.Alley, tab2.Shelf, sum(tab1.sells) as place_sells from
(select Barcode as bar, sum(Piecies) as sells, Store_id from TransactionContainsProduct left join Transaction on TransactionContainsProduct.Trans_id = Transaction.Trans_id group by TransactionContainsProduct.Barcode, Transaction.Store_id
) tab1
left join
StoreOffersProduct tab2
on (tab1.Store_id = tab2.Store_id and tab1.bar = tab2.Barcode) group by tab2.Alley, tab2.Shelf
order by place_sells desc 
limit 6;  
