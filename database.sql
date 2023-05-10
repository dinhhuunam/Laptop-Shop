CREATE DATABASE ecommerce_cart;

CREATE TABLE account (
		uID int(11) unique not null auto_increment,
        user varchar(150) not null,
        pass varchar(150) not null,
        contact varchar(150) not null,
        primary key(uID)
);

CREATE TABLE products (
		id int(11) unique not null auto_increment,
        name varchar(150) not null,
        category varchar(150) not null,
        price double not null,
        image varchar(150) not null,
        primary key(id)
);

insert into products(id,name,category,price,image)
values(1,'Laptop Fujitsu LifeBook E5410','office laptop',349,'photo1.jpg');
insert into products(id,name,category,price,image)
values(2,'Asus TUF 2022 F15','gaming laptop',400,'photo2.jpg');
insert into products(id,name,category,price,image)
values(3,'Asus Zenbook Q409ZA','gaming laptop',500,'photo3.jpg');
insert into products(id,name,category,price,image)
values(4,'HP Zbook ','office laptop',600,'photo4.jpg');
insert into products(id,name,category,price,image)
values(5,'Lenovo Yoga 7','office laptop',300,'photo5.jpg');
insert into products(id,name,category,price,image)
values(6,'Microsoft Surface Pro 7 Plus ','office laptop',600,'photo6.jpg');
insert into products(id,name,category,price,image)
values(7,'Laptop Acer Nitro 5 AN515-58-5046','gaming laptop',700,'photo7.jpg');
insert into products(id,name,category,price,image)
values(8,'Lenovo Legion 5 Pro R9000P','gaming laptop',200,'photo8.jpg');
insert into products(id,name,category,price,image)
values(9,'Asus ROG Zephyrus','gaming laptop',500,'photo9.jpg');
insert into products(id,name,category,price,image)
values(10,'Asus ROG Flow Z13','gaming laptop',600,'photo10.jpg');
insert into products(id,name,category,price,image)
values(11,'Asus ROG Strix G16','gaming laptop',900,'photo11.jpg');
insert into products(id,name,category,price,image)
values(12,'Laptop Dell XPS','office laptop',700,'photo12.jpg');

CREATE TABLE orders (
		o_id int(11) unique not null auto_increment,
        p_id int(11) not null,
        u_id int(11) not null,
        o_quantity int(11) not null,
        o_date varchar(150) not null,
        primary key(o_id),
        foreign key(p_id) references products(id),
        foreign key(u_id) references account(uID)
)