insert into Stores(Store_id, Operating_hours, Size_) values (1, '08:00-09:00', 340);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2106423178', 1, 1);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(1, 1, 'Georgiou Kerdinou', '69', '11522', 'Athens');

insert into Stores(Store_id, Operating_hours, Size_) values (2, '09:00-09:00', 280);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2103213590', 2, 2);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(2, 2, 'Korai', '3', '10564', 'Athens');

insert into Stores(Store_id, Operating_hours, Size_) values (3, '07:00-09:00', 420);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2109213043', 3, 3);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(3, 3, 'Dimitrakopoulou', '72', '11741', 'Athens');

insert into Stores(Store_id, Operating_hours, Size_) values (4, '07:00-09:00', 420);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2106421150', 4, 4);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(4, 4, 'Valtinon', '30', '11474', 'Athens');

insert into Stores(Store_id, Operating_hours, Size_) values (5, '08:00-09:00', 300);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2721027043', 5, 5);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(5, 5, 'Kallipateiras', '91', '24100', 'Kalamata');

insert into Stores(Store_id, Operating_hours, Size_) values (6, '08:00-09:00', 242);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2721096170', 6, 6);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(6, 6, 'Akrita', '1', '24100', 'Kalamata');

insert into Stores(Store_id, Operating_hours, Size_) values (7, '07:00-09:00', 180);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2721085388', 7, 7);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(7, 7, 'Psaron', '106', '24100', 'Kalamata');

insert into Stores(Store_id, Operating_hours, Size_) values (8, '07:00-09:00', 296);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2231052871', 8, 8);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(8, 8, 'Karagianopoulou', '3', '35100', 'Lamia');

insert into Stores(Store_id, Operating_hours, Size_) values (9, '09:00-09:00', 500);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2231021274', 9, 9);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(9, 9, 'Pylou', '24', '35100', 'Lamia');

insert into Stores(Store_id, Operating_hours, Size_) values (10, '09:00-09:00', 410);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2231084059', 10, 10);
insert into StorePhoneNo(Numb, Phone_id, Store_id) values('2231098461', 11, 10);
insert into StoreAddress(Store_id, Adr_id, Street, Number_, Postal_code, City) values(10, 10, 'Arkadiou', '4', '35100', 'Lamia');

/*CATEGORIES*/
insert into Category(Category_id, Name) values (1,'Fresh Products');
insert into Category(Category_id, Name) values (2,'Fridge Products');
insert into Category(Category_id, Name) values (3,'Liquors and Spirits');
insert into Category(Category_id, Name) values (4,'Self Care Products');
insert into Category(Category_id, Name) values (5,'Home Products');
insert into Category(Category_id, Name) values (6,'Pet Products');

/* kathgoria 1 Fresh Products*/
insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9457813465', 2.93, 'Apples', 'Golden', 0, 1);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.04, '2020-03-04','9457813465');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-04-01', 2.8, '2020-04-10','9457813465');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7946842152', 4.37, 'Pears', 'Conference', 0, 1);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 4.00, '2020-04-04','7946842152');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7986121145', 5.4, 'Avocado', 'Biofarm', 1, 1);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9458871645', 3.21, 'Oranges', 'Conference', 0, 1);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 2.5, '2020-03-04','9458871645');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-05', 2.9, '2020-03-24','9458871645');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-25', 3.46, '2020-04-04','9458871645');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4385784111', 3.24, 'Bananas', 'Dole', 1, 1);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784859699', 3.2, 'Pork', '', 1, 1);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784859691', 2.4, 'Chicken', '', 0, 1);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.4, '2020-03-04','7784859691');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4444587133', 1.5, 'Lamp Head', '', 1, 1);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1119786455', 2.6, 'Meatballs', '', 1, 1);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4689751247', 5.2, 'Pineapple', 'Biofarm', 1, 1);

/* kathgoria 2 Fridge Products*/

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4876969691', 1.08, 'Kefir', 'Olympos', 1, 2);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7988841112', 1.2, 'ChocoMilk', 'Rodopaki', 1, 2);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9273049372', 1.45, 'Milk', 'Delta', 1, 2);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7848784753', 1.98, 'Eggs', 'Xrysa Ayga', 1, 2);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9647851112', 0.78, 'Danone', 'Activia', 1, 2);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('9986157468', 0.9, 'Light Yogurt', 'Rodopi', 0, 2);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 1.2, '2020-02-04','9986157468');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-02-05', 1.1, '2020-03-24','9986157468');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4475837200', 0.95, 'Cream', 'Marata', 0, 2);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.4, '2020-03-04','4475837200');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('0182740844', 0.7, 'Bueno', 'Kinder', 0, 2);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 0.64, '2020-04-04','0182740844');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784547843', 1.0, 'Nut Bar', 'Flapjack', 0, 2);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 2.04, '2020-03-24','7784547843');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-24', 1.5, '2020-04-14','7784547843');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1000488743', 2.4, 'Tyrokafterh', 'AlfaStar', 0, 2);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 3.4, '2020-02-04','1000488743');

/*kathgoria 3 Liquors and Spirits*/
insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('0645158001', 3.52, 'Beer 4pack', 'Alfa', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4460322153', 3.74, 'Beer 6pack', 'Bergina', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('3659568874', 1.51, 'Sangria', 'Don Simon', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7874585330', 1.9, 'White wine', 'Pareas', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('2223656581', 2.04, 'Red Wine', 'Pareas', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464646', 2.92, 'Ouzo', 'Mini', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464647', 3.36, 'Tsipouro', 'Mpampatzim', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464648', 13, 'Cognac', 'Metaxa', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7774464231', 15.50, 'Vodka', 'Absolut', 1, 3);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4325784111', 24.96, 'Whiskey', 'Jack Daniels', 1, 3);

/*kathgoria 4 Self Care Products*/
insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4965879533',1.79 , 'Toothbrush', 'Colgate', 1, 4);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('3666321005', 2.19, 'Toothpaste', 'White System', 1, 4);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4415266990', 31.19, 'Eau De Toilete', 'Prada', 1, 4);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4444555512', 3.56, 'Shampoo', 'Elvive', 1, 4);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1212120003', 5.5, 'Conditioner', 'Loreal', 1, 4);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6666555551', 4.9, 'Shaving Cream', 'Bic', 1, 4);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4447859992',70 , 'Antiage Cream', 'Clinique', 0, 4);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01',80 , '2020-02-04','4447859992');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-02-05',60 , '2020-03-04','4447859992');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-05',74 , '2020-04-08','4447859992');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6489200132', 12, 'Face Mask', 'Bioten', 0, 4);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 9.5, '2020-03-04','6489200132');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-04',11.2 , '2020-03-21','6489200132');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('5100232520', 20, 'Teeth Whitening Pen', 'Moon', 0, 4);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 24, '2020-03-27','5100232520');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('7784589630', 12, 'Amethyst Crystal Cleaner', '', 0, 4);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 19, '2020-04-25','7784589630');

/*kathgoria 5 Home Products*/
insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6584756985', 150, 'Woven Rug', 'Wyat', 1, 5);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('2103254875', 69, 'Window Panel', 'Homedecor', 1, 5);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6458954112',249 , 'Wooden Mirror', 'Homedecor', 1, 5);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1033659896', 50, 'Chair', 'Homedecor', 1, 5);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('0012121036', 15, 'Plastic Chair', '', 1, 5);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6941035879', 100, 'Table', 'Homedecor', 1, 5);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('3330323201', 500, 'Sofa', 'Homedecor', 0, 5);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 560, '2020-02-04','3330323201');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-02-05',480 , '2020-03-04','3330323201');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-05',471 , '2020-04-08','3330323201');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6495687410', 4, 'Trash Can', 'Homedecor', 0, 5);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 6,'2020-03-04','6495687410');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-04', 5.2,'2020-03-21','6495687410');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6951000236',31 , 'Lamp', 'Homedecor', 0, 5);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 25, '2020-03-27','6951000236');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('8342876655',3 , 'Tv Screen Cleaner', '', 0, 5);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 2.1, '2020-04-25','8342876655');

/*kathgoria 6 Pet Products*/
insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4587963201', 25, 'Dog Food', 'Pet4u', 1, 6);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4785469600',25 , 'Cat Food', 'Pet4u', 1, 6);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('3333333212', 10, 'Fish Food', 'Pet4u', 1, 6);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1000000002', 12, 'Turtle Food', 'Pet4u', 1, 6);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1000000230',42 , 'Lizard Food', 'Pet4u', 1, 6);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('5555555555',3 , 'Bird Food', '', 1, 6);

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('6666666666',4 , 'Mice Food', 'Pet4u', 0, 6);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01',4.5 , '2020-02-04','6666666666');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-02-05', 4.9, '2020-03-04','6666666666');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-05', 5.1, '2020-04-08','6666666666');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1010144512', 60, 'Snake Food', 'Pet4u', 0, 6);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 62,'2020-03-04','1010144512');
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-03-04', 30, '2020-03-21','1010144512');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('1010101010',7 , 'Rabbit Food', 'Pet4u', 0, 6);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01', 8, '2020-03-27','1010101010');

insert into Products(Barcode, Price, Name, Brand_name, First_transaction, Category_id) values ('4242424242', 100, 'Animal Cage', 'Pet4u', 0, 6);
insert into HadOlderPrice(Start_date, Price, End_date, Barcode) values ('2020-01-01',132 , '2020-04-25','4242424242');

/****************************************************************************************************************/
insert into StoreProvidesCategory(Store_id, Category_id) values (1,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (1,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (1,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (1,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (1,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (1,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (1,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (2,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (2,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (2,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (2,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (2,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (2,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (2,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (3,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (3,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (3,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (3,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (3,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (3,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (3,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (4,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (4,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (4,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (4,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (4,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (4,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (4,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (5,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (5,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (5,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (5,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (5,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (5,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (5,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (6,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (6,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (6,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (6,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (6,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (6,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'8342876655' , 5, 10);


insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (6,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (7,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (7,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (7,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (7,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (7,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (7,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (7,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (8,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (8,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (8,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (8,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (8,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (8,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (8,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (9,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (9,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (9,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (9,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (9,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (9,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (9,'6666666666' , 6, 10);

/****************************************************************************************************************/

insert into StoreProvidesCategory(Store_id, Category_id) values (10,1);
insert into StoreProvidesCategory(Store_id, Category_id) values (10,2);
insert into StoreProvidesCategory(Store_id, Category_id) values (10,3);
insert into StoreProvidesCategory(Store_id, Category_id) values (10,4);
insert into StoreProvidesCategory(Store_id, Category_id) values (10,5);
insert into StoreProvidesCategory(Store_id, Category_id) values (10,6);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1119786455' , 1, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4385784111' , 1, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4444587133' , 1, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4689751247' , 1, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7784859691' , 1, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7784859699' , 1, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7946842152' , 1, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7986121145' , 1, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'9457813465' , 1, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'9458871645' , 1, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'0182740844' , 2, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1000488743' , 2, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4475837200' , 2, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4876969691' , 2, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7784547843' , 2, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7848784753' , 2, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7988841112' , 2, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'9273049372' , 2, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'9647851112' , 2, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'9986157468' , 2, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'0645158001' , 3, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'2223656581' , 3, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'3659568874' , 3, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4325784111' , 3, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4460322153' , 3, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7774464231' , 3, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7774464646' , 3, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7774464647' , 3, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7774464648' , 3, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7874585330' , 3, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1212120003' , 4, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'3666321005' , 4, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4415266990' , 4, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4444555512' , 4, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4447859992' , 4, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4965879533' , 4, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'5100232520' , 4, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6489200132' , 4, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6666555551' , 4, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'7784589630' , 4, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'0012121036' , 5, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1033659896' , 5, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'2103254875' , 5, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'3330323201' , 5, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6458954112' , 5, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6495687410' , 5, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6584756985' , 5, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6941035879' , 5, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6951000236' , 5, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'8342876655' , 5, 10);

insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1000000002' , 6, 1);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1000000230' , 6, 2);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1010101010' , 6, 3);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'1010144512' , 6, 4);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'3333333212' , 6, 5);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4242424242' , 6, 6);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4587963201' , 6, 7);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'4785469600' , 6, 8);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'5555555555' , 6, 9);
insert into StoreOffersProduct(Store_id, Barcode, Alley, Shelf) values (10,'6666666666' , 6, 10);
/****************************************************************************************************************/

/* PELATES */ /* ta points logika tha einai to 10% epi ths timhs twn proiontwn */
insert into Customer(Card, Phone, Pet, Family_members, Points, Date_of_birth, Name) values (1,'2104547954','Dog',2,31,'1978-02-08','Giorgos Giorgopoulos');
insert into CustomerAddress(Card, Adr_id, Street, Number_, Postal_code, City) values (1,1,'Eksikiou','4','11845','Athens');

insert into Customer(Card, Phone, Pet, Family_members, Points, Date_of_birth, Name) values (2,'2104452103','',4,48,'1980-04-02','Giannia Giannakaki');
insert into CustomerAddress(Card, Adr_id, Street, Number_, Postal_code, City) values (2,2,'Antiopis','84','11364','Athens');

insert into Customer(Card, Phone, Pet, Family_members, Points, Date_of_birth, Name) values (3,'2231054788','Snake',1,95,'1994-01-01','Dimitris Dimitropoulos');
insert into CustomerAddress(Card, Adr_id, Street, Number_, Postal_code, City) values (3,3,'Athanasiou Diakou','156','35100','Lamia');

insert into Customer(Card, Phone, Pet, Family_members, Points, Date_of_birth, Name) values (4,'2231047478','Turtle',5,48,'1966-08-08','Akis Akakios');
insert into CustomerAddress(Card, Adr_id, Street, Number_, Postal_code, City) values (4,4,'Akakias','12','35100','Lamia');

insert into Customer(Card, Phone, Pet, Family_members, Points, Date_of_birth, Name) values (5,'2721000234','Cat',3,24,'1979-02-08','Aleksandra Aleksandridi');
insert into CustomerAddress(Card, Adr_id, Street, Number_, Postal_code, City) values (5,5,'28hs Oktombriou','421','24100','Kalamata');

insert into Customer(Card, Phone, Pet, Family_members, Points, Date_of_birth, Name) values (6,'2721099456','',7,26,'1958-09-04','Panos Panopoulos');
insert into CustomerAddress(Card, Adr_id, Street, Number_, Postal_code, City) values (6,6,'Skoufa','19','24100','Kalamata');

/* agores  '2008-11-09 15:45:2' DATETIME - format: YYYY-MM-DD HH:MI:SS*/


/****************************************************************************************************************************/
insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-01-02 13:34:21',8 , 114, 'Credit Card', 1,2);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-02 13:34:21', 1, '6941035879',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-02 13:34:21', 1, '7784859699',2); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-02 13:34:21', 1, '9986157468',4); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-02 13:34:21', 1, '6495687410',1); 

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-01-14 15:00:01', 11,117.54 , 'Credit Card', 1,2);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-14 15:00:01', 1,'0012121036',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-14 15:00:01', 1,'0182740844',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-14 15:00:01', 1,'0645158001',2); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-14 15:00:01', 1,'1000000002',4); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-14 15:00:01', 1,'1000000230',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-14 15:00:01', 1,'1000488743',2); 

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-02-14 15:00:01',6 ,78.6 , 'Cash', 1,3);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-02-14 15:00:01', 1,'1010101010',2); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-02-14 15:00:01', 1,'1010144512',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-02-14 15:00:01', 1,'1119786455',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-02-14 15:00:01', 1,'1212120003',2); 
/****************************************************************************************************************/
insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-03-04 10:00:24',13, 432.79 , 'Credit Card', 2,3);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'6495687410',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'6584756985',1);  
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'7774464647',2); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'8342876655',5); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'4876969691',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'4965879533',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'4689751247',1);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-04 10:00:24',2,'6458954112',1);

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-04-25 17:00:00',7, 24.76, 'Cash', 2,4);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'9986157468',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'9647851112',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'3659568874',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'7784859699',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'6666666666',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'3333333212',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-25 17:00:00',2,'7946842152',1); 

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-04-26 17:00:00', 14, 30.86, 'Cash', 2,3);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-26 17:00:00',2,'7774464231',1);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-26 17:00:00',2,'7774464647',1);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-26 17:00:00',2,'7784547843',12);
/*******************************************************************************************************************/
insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-01-01 19:04:23', 1, 500, 'Credit Card', 3,8);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-01 19:04:23',3,'3330323201',1);

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-02-01 21:00:00', 1, 100, 'Cash', 3,9);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-02-01 21:00:00',3,'6941035879',1);

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-04-02 20:00:00', 3, 359, 'Cash', 3,10);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-02 20:00:00',3,'1010144512',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-02 20:00:00',3,'1033659896',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-02 20:00:00',3,'6458954112',1); 
/***********************************************************************************/

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-04-04 11:00:21',13, 432.79 , 'Credit Card', 4,8);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'6495687410',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'6584756985',1);  
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'7774464647',2); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'8342876655',5); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'4876969691',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'4965879533',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'4689751247',1);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-04 11:00:21',4,'6458954112',1);

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-01-25 8:00:00',7, 24.76, 'Credit Card', 4,9);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'9986157468',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'9647851112',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'3659568874',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'7784859699',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'6666666666',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'3333333212',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-25 8:00:00',4,'7946842152',1); 

insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-01-26 17:00:00', 14, 30.86, 'Cash', 4,10);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-26 17:00:00',4,'7774464231',1);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-26 17:00:00',4,'7774464647',1);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-01-26 17:00:00',4,'7784547843',12);

/***************************************************************************************************************/
insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-03-11 14:22:10', 10, 24.32, 'Cash', 5,5);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'4385784111',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'4475837200',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'5555555555',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'7774464646',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'7986121145',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'7988841112',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'9458871645',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'0182740844',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'3659568874',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-03-11 14:22:10',5,'3666321005',1); 

/***************************************************************************************************************/
insert into Transaction(Date_time,Total_piecies, Total_amount, Payment_method, Card, Store_id) values ('2020-04-21 16:22:40', 14, 263.28 , 'Credit Card', 6,6);
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'5555555555',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'1000000230',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'2103254875',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'4689751247',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'5100232520',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'7774464231',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'6489200132',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'7784547843',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'9647851112',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'0012121036',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'4447859992',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'6666555551',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'6666666666',1); 
insert into TransactionContainsProduct(Date_time, Card, Barcode, Piecies) values('2020-04-21 16:22:40',6,'9986157468',1); 
