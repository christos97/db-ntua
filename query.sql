SELECT Transaction.Card, Transaction.Date_time, Transaction.Total_piecies, Transaction.Total_amount, Transaction.Payment_method,
StoreAddress.Street, StoreAddress.Number_, 
Customer.Name, Customer.Card 
FROM Transaction 
JOIN StoreAddress 
ON StoreAddress.Store_id=Transaction.Store_id 
JOIN Customer 
ON Customer.Card=Transaction.Card
JOIN TransactionContainsProduct 
ON TransactionContainsProduct.Card=Transaction.Card
AND TransactionContainsProduct.Date_time=Transaction.Date_time
WHERE Transaction.Store_id=? 
AND Transaction.Total_amount>=? AND Transaction.Total_amount<=? 
AND Transaction.Total_piecies>=? AND Transaction.Total_piecies<=? 
AND Transaction.Payment_method=?',
