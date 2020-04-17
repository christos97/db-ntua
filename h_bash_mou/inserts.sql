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
