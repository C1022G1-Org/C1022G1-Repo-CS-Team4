-- drop schema users;
create schema users;
use users;
create table user(
id int auto_increment primary key,
name varchar(50),
email varchar(50),
password varchar(50),
gender varchar(50)
);
insert into user (name,email,password,gender) values ('Nghĩa','abc@gmail.com','123','Bê đê');
select * from user;

select * from user where email = ? and password =?;