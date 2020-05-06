delimiter $$
create trigger after_update_price
after update
on Products for each row
begin
	set @maxenddate := (select MAX(End_date) from HadOlderPrice where Barcode = new.Barcode);
	if @maxendddate is null then
		set @maxenddate := '2019-12-31';
	end if;
	if old.Price <> new.Price then 
		insert into HadOlderPrice(Start_date, End_date, Price, Barcode) values (DATE_ADD(@maxenddate, interval 1 day), CURDATE(), old.Price, new.Barcode);
	end if;
end$$
delimiter ;


delimiter $$
create trigger after_transcontprod_insert
after insert
on TransactionContainsProduct for each row
begin
	set @timeoftrans := (select Date_time from Transaction where Trans_id = new.Trans_id);
	set @prod_pr := (select Price from HadOlderPrice where new.Barcode = Barcode and @timeoftrans >= Start_date and @timeoftrans <= End_date); 
	if @prod_pr is null then
		set @prod_pr := (select Price from Products where Barcode = new.Barcode);
	end if;
	set @newpoints = 0.1 * new.Piecies * @prod_pr; 
	update Transaction
		set Total_piecies = Total_piecies + new.Piecies, Total_amount = Total_amount + new.Piecies * @prod_pr 
		where (Trans_id = new.Trans_id);
	update Customer
		set Points = Points + @newpoints
		where (Card = (select Card from Transaction where Trans_id = new.Trans_id));
end$$
delimiter ;

delimiter $$
create trigger after_delete_StoreProvidesCategory
after delete
on StoreProvidesCategory for each row
begin
	delete from StoreOffersProduct where Store_id = old.Store_id and (Barcode in (select Barcode from Products where Category_id = old.Category_id));
end$$
delimiter ;
