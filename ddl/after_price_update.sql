DELIMITER $$

CREATE TRIGGER after_price_update 
AFTER UPDATE ON Products
FOR EACH ROW 
	insert into HadOlderPrice ( Start_date, Price, End_date, Barcode)
    values(curdate(), new.Price, curdate(), new.Barcode);

DELIMITER ;
