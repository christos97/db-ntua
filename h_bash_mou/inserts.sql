insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (1, '08:00-09:00', 340);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2106423178', 1, 1);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(1, 1, 'Georgiou Kerdinou', '69', '11522', 'Athens');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (2, '09:00-09:00', 280);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2103213590', 2, 2);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(2, 2, 'Korai', '3', '10564', 'Athens');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (3, '07:00-09:00', 420);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2109213043', 3, 3);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(3, 3, 'Dimitrakopoulou', '72', '11741', 'Athens');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (4, '07:00-09:00', 420);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2106421150', 4, 4);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(4, 4, 'Valtinon', '30', '11474', 'Athens');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (5, '08:00-09:00', 300);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2721027043', 5, 5);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(5, 5, 'Kallipateiras', '91', '24100', 'Kalamata');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (6, '08:00-09:00', 242);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2721096170', 6, 6);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(6, 6, 'Akrita', '1', '24100', 'Kalamata');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (7, '07:00-09:00', 180);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2721085388', 7, 7);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(7, 7, 'Psaron', '106', '24100', 'Kalamata');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (8, '07:00-09:00', 296);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2231052871', 8, 8);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(8, 8, 'Karagianopoulou', '3', '35100', 'Lamia');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (9, '09:00-09:00', 500);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2231021274', 9, 9);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(9, 9, 'Pylou', '24', '35100', 'Lamia');

insert into shopsNcustomers.Stores(Store_id, Operating_hours, Size_) values (10, '09:00-09:00', 410);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2231084059', 10, 10);
insert into shopsNcustomers.StorePhoneNo(Numb, Phone_id, Store_id) values('2231098461', 11, 10);
insert into shopsNcustomers.StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(10, 10, 'Arkadiou', '4', '35100', 'Lamia');

insert into shopsNcustomers.Category(Category_id, Name) values (1,'Fresh Products');
insert into shopsNcustomers.Category(Category_id, Name) values (2,'Fridge Products');
insert into shopsNcustomers.Category(Category_id, Name) values (3,'Liquors and Spirits');
insert into shopsNcustomers.Category(Category_id, Name) values (4,'Self Care Products');
insert into shopsNcustomers.Category(Category_id, Name) values (5,'Home Products');
insert into shopsNcustomers.Category(Category_id, Name) values (6,'Pet Products');

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (1,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (1,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (1,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (1,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (1,5);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (1,6);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (2,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (2,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (2,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (2,4);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (3,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (3,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (3,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (3,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (3,5);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (4,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (4,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (4,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (4,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (4,5);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (4,6);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (5,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (5,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (5,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (5,4);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (6,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (6,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (6,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (6,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (6,5);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (7,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (7,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (7,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (7,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (7,5);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (7,6);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (8,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (8,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (8,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (8,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (8,6);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (9,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (9,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (9,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (9,4);

insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (10,1);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (10,2);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (10,3);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (10,4);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (10,5);
insert into shopsNcustomers.StoreProvidesCategory(Store_id, Category_id) values (10,6);

/* kathgoria 1 Fresh Products*/
insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9457813465', 2.93, 'Apples', 'Golden', 0, 1);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.04, '2020-03-04','9457813465');
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-04-01', 2.8, '2020-04-10','9457813465');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7946842152', 4.37, 'Pears', 'Conference', 0, 1);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 4.00, '2020-04-04','7946842152');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7986121145', 5.4, 'Avocado', 'Biofarm', 1, 1);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9458871645', 3.21, 'Oranges', 'Conference', 0, 1);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 2.5, '2020-03-04','9458871645');
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-05', 2.9, '2020-03-24','9458871645');
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-25', 3.46, '2020-04-04','9458871645');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4385784111', 3.24, 'Bananas', 'Dole', 1, 1);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784859699', 3.2, 'Pork', '', 1, 1);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784859691', 2.4, 'Chicken', '', 0, 1);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.4, '2020-03-04','7784859691');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4444587133', 1.5, 'Lamp Head', '', 1, 1);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1119786455', 2.6, 'Meatballs', '', 1, 1);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4689751247', 5.2, 'Pineapple', 'Biofarm', 1, 1);

/* kathgoria 2 Fridge Products*/

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4876969691', 1.08, 'Kefir', 'Olympos', 1, 2);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7988841112', 1.2, 'ChocoMilk', 'Rodopaki', 1, 2);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9273049372', 1.45, 'Milk', 'Delta', 1, 2);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7848784753', 1.98, 'Eggs', 'Xrysa Ayga', 1, 2);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9647851112', 0.78, 'Danone', 'Activia', 1, 2);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9986157468', 0.9, 'Light Yogurt', 'Rodopi', 0, 2);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 1.2, '2020-02-04','9986157468');
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-02-05', 1.1, '2020-03-24','9986157468');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4475837200', 0.95, 'Cream', 'Marata', 0, 2);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.4, '2020-03-04','4475837200');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('0182740844', 0.7, 'Bueno', 'Kinder', 0, 2);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 0.64, '2020-04-04','0182740844');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784547843', 1.0, 'Nut Bar', 'Flapjack', 0, 2);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 2.04, '2020-03-24','7784547843');
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-24', 1.5, '2020-04-14','7784547843');

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1000488743', 2.4, 'Tyrokafterh', 'AlfaStar', 0, 2);
insert into shopsNcustomers.HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.4, '2020-02-04','1000488743');

/*kathgoria 3 Liquors and Spirits*/
insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('0645158001', 3.52, 'Beer 4pack', 'Alfa', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4460322153', 3.74, 'Beer 6pack', 'Bergina', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('3659568874', 1.51, 'Sangria', 'Don Simon', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7874585330', 1.9, 'White wine', 'Pareas', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('2223656581', 2.04, 'Red Wine', 'Pareas', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464646', 2.92, 'Ouzo', 'Mini', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464647', 3.36, 'Tsipouro', 'Mpampatzim', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464648', 13, 'Cognac', 'Metaxa', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464231', 15.50, 'Vodka', 'Absolut', 1, 3);

insert into shopsNcustomers.Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4325784111', 24.96, 'Whiskey', 'Jack Daniels', 1, 3);

/*kathgoria 4*/
/*kathgoria 5*/
/*kathgoria 6*/
