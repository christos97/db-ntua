drop database if exists db_ntua;
create database db_ntua;
use db_ntua;

create table Stores(
	Store_id int not null AUTO_INCREMENT unique,
	Operating_hours varchar(11) not null default '09:00-21:00',
	Size_ float,
	check (Size_ > 0),
	check (Store_id >= 1),
	unique(Store_id),
	primary key(Store_id)
);

create table StorePhoneNo(
	Numb varchar(10) not null,
	Phone_Id int not null AUTO_INCREMENT,
	Store_id int not null ,
	unique(Phone_id),
	primary key(Phone_Id,Store_id),
	foreign key (Store_id) references Stores(Store_id)
	on delete cascade
	on update cascade
);

create table StoreAddress(
	Store_id int not null,
	Adr_id int not null AUTO_INCREMENT,
	Street varchar(255),
	Number_ varchar(4),
	Postal_code varchar(5),
	City varchar(255),
	unique(Adr_id,Store_id),
	primary key(Store_id, Adr_id),
	foreign key (Store_id) references Stores(Store_id)
	on delete cascade
	on update cascade
);

create table Customer(
	Card int not null AUTO_INCREMENT unique,
	Phone varchar(10) not null,
	Pet varchar(255),
	Family_members int,
	Points float,
	Date_of_birth date,
	Name varchar(255),
	check (Family_members > 0),
	check (Points >= 0),
	unique(Card),
	primary key(Card)
);

create table CustomerAddress(
	Card int not null,
	Adr_id int not null AUTO_INCREMENT,
	Street varchar(255),
	Number_ varchar(4),
	Postal_code varchar(5),
	City varchar(255),
	primary key(Adr_id),
	unique(Adr_id,Card),
	foreign key (Card) references Customer(Card)
	on delete cascade
	on update cascade
);

create table Category(
	Category_id int not null AUTO_INCREMENT,
	Name varchar(255) not null,
	unique (Category_id, Name),
	primary key(Category_id)
);

create table StoreProvidesCategory(
	Store_id int not null,
	Category_id int not null,
	unique (Store_id,Category_id),
	foreign key(Store_id) references Stores(Store_id)
	on delete cascade
	on update cascade,
	foreign key(Category_id) references Category(Category_id)
	on delete cascade
	on update cascade
);

create table Products (
	Barcode varchar(10) not null unique,
	Price decimal(6,3) not null,
	Name varchar(255) not null,
	Brand_name varchar(255) default '',
	First_transaction int not null default 0,
	Category_id int not null,
	check (Price > 0),
	check (First_transaction in (0,1)),
	unique(Barcode,Category_id),
	foreign key (Category_id) references Category(Category_id)
	on delete cascade
	on update cascade,
	primary key(Barcode)
);

create table HadOlderPrice(
	Start_date date not null,
	Price decimal(6,3) not null,
	End_date date not null,
	Barcode varchar(10) not null,
	check (Start_date < End_date),
	check (Price > 0),
	foreign key(Barcode) references Products(Barcode)
	on delete cascade
	on update cascade,
	primary key(Start_date,Barcode)
);

create table StoreOffersProduct(
	Store_id int not null,
	Barcode varchar(10) not null,
	Alley int not null,
	Shelf int not null,
	foreign key(Store_id) references Stores(Store_id)
	on delete cascade
	on update cascade,
	foreign key(Barcode) references Products(Barcode)
	on delete cascade
	on update cascade,
	unique (Store_id,Barcode),
	primary key (Store_id,Barcode)
);

create table Transaction(
	Trans_id int not null unique,
	Date_time datetime not null,
	Total_piecies int default 0,
	Total_amount float default 0,
	Payment_method varchar(255) not null,
	Card int not null,
	Store_id int not null,
	check (Total_piecies >= 0),
	check (Total_amount >= 0),
	check (Payment_method in ('Cash','Credit card')),
	foreign key(Card) references Customer(Card)
	on delete cascade
	on update cascade,
	foreign key(Store_id) references Stores(Store_id)
	on delete cascade
	on update cascade,
	primary key(Trans_id)
);

create table TransactionContainsProduct(
	Trans_id int not null,
	Barcode varchar(10) not null,
	Piecies int not null default 1,
	foreign key(Trans_id) references Transaction(Trans_id) 
	on delete cascade
	on update cascade,
	foreign key(Barcode) references Products(Barcode) 
	on delete cascade
	on update cascade
);