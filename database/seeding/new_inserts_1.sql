/*GENARHS*/
insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (1, '2020-01-12 23:08:51',0, 0, 'Credit Card', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(1, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(1, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(1, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(1, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(1, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (2, '2020-01-08 20:03:20',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(2, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(2, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(2, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(2, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(2, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (3, '2020-01-24 15:22:41',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(3, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(3, (select Barcode from Products order by rand() limit 1),4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(3, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(3, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(3, (select Barcode from Products order by rand() limit 1),2);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (4, '2020-01-05 19:43:27',0, 0, 'Credit Card', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(4, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(4, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(4, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(4, (select Barcode from Products order by rand() limit 1),4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(4, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (5, '2020-01-12 19:29:14',0, 0, 'Cash', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(5, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(5, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(5, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(5, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(5, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (6, '2020-01-15 17:15:48',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(6, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(6, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(6, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(6, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(6, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (7, '2020-01-12 15:53:08',0, 0, 'Credit Card', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(7, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(7, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(7, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(7, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(7, (select Barcode from Products order by rand() limit 1),2);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (8, '2020-01-09 11:54:09',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(8, (select Barcode from Products order by rand() limit 1),3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(8, (select Barcode from Products order by rand() limit 1),3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(8, (select Barcode from Products order by rand() limit 1),3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(8, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(8, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (9, '2020-01-30 17:02:46',0, 0, 'Credit Card', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(9, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(9, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(9, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(9, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(9, (select Barcode from Products order by rand() limit 1),2);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (10, '2020-01-23 09:21:49',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(10, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(10, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(10, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(10, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(10, (select Barcode from Products order by rand() limit 1),2);

/*FLEBARHS */
insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (11, '2020-02-01 15:47:57',0, 0, 'Credit Card', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(11, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(11, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(11, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(11, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(11, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (12, '2020-02-08 15:47:57',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(12, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(12, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(12, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(12, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(12, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (13, '2020-02-09 14:15:31',0, 0, 'Cash', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(13, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(13, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(13, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(13, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(13, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (14, '2020-02-02 10:17:56',0, 0, 'Cash', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(14, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(14, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(14, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(14, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(14, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (15, '2020-02-26 13:20:10',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(15, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(15, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(15, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(15, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(15, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (16, '2020-02-21 18:54:37',0, 0, 'Cash', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(16, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(16, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(16, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(16, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(16, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (17, '2020-02-19 11:57:03',0, 0, 'Credit Card', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(17, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(17, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(17, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(17, (select Barcode from Products order by rand() limit 1),4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(17, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (18, '2020-02-20 19:56:37',0, 0, 'Credit Card', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(18, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(18, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(18, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(18, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(18, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (19, '2020-02-16 18:51:57',0, 0, 'Cash', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(19, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(19, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(19, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(19, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(19, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (20, '2020-02-11 19:17:58',0, 0, 'Credit Card', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(20, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(20, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(20, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(20, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(20, (select Barcode from Products order by rand() limit 1),1);

/*MARTHS */
insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (21, '2020-03-10 09:26:45',0, 0, 'Credit Card', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(21, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(21, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(21, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(21, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(21, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (22, '2020-03-13 14:22:22',0, 0, 'Cash', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(22, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(22, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(22, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(22, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(22, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (23, '2020-03-24 10:24:00',0, 0, 'Credit Card', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(23, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(23, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(23, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(23, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(23, (select Barcode from Products order by rand() limit 1),2);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (24, '2020-03-02 09:02:09',0, 0, 'Cash', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(24, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(24, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(24, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(24, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(24, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (25, '2020-03-28 13:58:47',0, 0, 'Credit Card', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(25, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(25, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(25, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(25, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(25, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (26, '2020-03-12 13:47:26',0, 0, 'Cash', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(26, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(26, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(26, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(26, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(26, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (27, '2020-03-22 09:41:55',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(27, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(27, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(27, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(27, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(27, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (28, '2020-03-04 20:25:37',0, 0, 'Cash', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(28, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(28, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(28, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(28, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(28, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (29, '2020-03-19 14:18:47',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(29, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(29, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(29, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(29, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(29, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (30, '2020-03-24 12:22:24',0, 0, 'Credit Card', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(30, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(30, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(30, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(30, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(30, (select Barcode from Products order by rand() limit 1),1);

/*APRILIS*/
insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (31, '2020-04-12 09:08:48',0, 0, 'Credit Card', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(31, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(31, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(31, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(31, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(31, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (32, '2020-04-02 12:05:50',0, 0, 'Cash', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(32, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(32, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(32, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(32, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(32, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (33, '2020-04-03 11:02:50',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(33, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(33, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(33, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(33, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(33, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (34, '2020-04-09 10:56:38',0, 0, 'Cash', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(34, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(34, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(34, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(34, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(34, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (35, '2020-04-20 17:03:28',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(35, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(35, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(35, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(35, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(35, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (36, '2020-04-01 20:33:19',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(36, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(36, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(36, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(36, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(36, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (37, '2020-04-04 18:36:12',0, 0, 'Credit Card', 1,4);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(37, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(37, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(37, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(37, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(37, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (38, '2020-04-15 19:34:36',0, 0, 'Credit Card', 1,1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(38, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(38, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(38, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(38, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(38, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (39, '2020-04-25 20:49:51',0, 0, 'Cash', 1,2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(39, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(39, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(39, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(39, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(39, (select Barcode from Products order by rand() limit 1),1);

insert into Transaction(Trans_id, Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values (40, '2020-04-21 12:25:28',0, 0, 'Credit Card', 1,3);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(40, (select Barcode from Products order by rand() limit 1),2);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(40, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(40, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(40, (select Barcode from Products order by rand() limit 1),1);
insert into TransactionContainsProduct(Trans_id, Barcode, Piecies) values(40, (select Barcode from Products order by rand() limit 1),1);
