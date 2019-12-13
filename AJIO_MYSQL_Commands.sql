

drop database if exists ajio;
create database ajio;
use ajio;
create table product(pid int primary key auto_increment,name varchar(30) not null,price int not null,image_url varchar(30) not null,category varchar(30)not null)auto_increment=100;
create table user(uid int primary key auto_increment,name varchar(30) not null,email varchar(20) not null,password varchar(20) not null)auto_increment=200;
create table orders(oid int primary key auto_increment,user_uid int,total_amount int,order_date date,foreign key(user_uid)references user(uid))auto_increment=300;
create table order_details(od_id int primary key auto_increment,order_id int ,product_id int,quantity int,foreign key(order_id) references orders(oid),foreign key(product_id) references product(pid))auto_increment=400;
insert into product(name,price,image_url,category) values ('Bata',2000,'bataformel.jpeg','Formal_Shoes'),('Lee Cooper',2500,'leecooperformals.jpeg','Formal_Shoes'),('Hush Puppies',2800,'hushpuppiesformal.jpeg','Formal_Shoes'),('Park Avenue',3500,'parkavenueformals.jpeg','Formal_Shoes'),('Arrow',3000,'arrowformals.jpg','Formal_Shoes'),('Skechers',5000,'skecherssports.jpg','Sports_Shoes'),('Puma',2000,'pumasports.jpg','Sports_Shoes'),('Nike',4000,'nikesports.jpg','Sports_Shoes'),('Reebok',3000,'reeboksports.jpg','Sports_Shoes'),('Fila',3500,'filasports.jpeg','Sports_Shoes'),('Fila',3500,'filacasual.jpeg','Casual_Shoes'),('Adidas',4500,'adidascasual.jpg','Casual_Shoes'),('Woodland',5000,'woodlandcasual.jpeg','Casual_Shoes'),
('Redchief',2500,'redchiefcasual.png','Casual_Shoes'),('Nike',4000,'nikecasual.jpeg','Casual_Shoes'),('Fastrack',2000,'fastrack.jpg','Watches'),('Sonata',1600,'sonata.jpg','Watches'),('Timex',1700,'timex.jpg','Watches'),('Fossil',1800,'fossil.jpeg','Watches'),('casio',2000,'casio.jpg','Watches'),('Fastrack',2000,'fastrackglasses.jpeg','Sunglasses'),('Ray-Ban',1600,'rayban.png','Sunglasses'),('Police',1700,'police.jpeg','Sunglasses'),('Vogue',1800,'vogue.png','Sunglasses'),('Gucci',3000,'gucci.jpg','Sunglasses');


