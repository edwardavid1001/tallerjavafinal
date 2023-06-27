CREATE DATABASE myapp;
USE myapp;
CREATE TABLE users_tbl (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_firstname VARCHAR(50) NOT NULL,
  user_lastname VARCHAR(50) NOT NULL,
  user_email VARCHAR(50) NOT NULL,
  user_password varbinary(255));


create table category_tbl(
category_id int AUTO_INCREMENT not null,
category_name VARCHAR(50) not null,
PRIMARY KEY (category_id ));

CREATE TABLE product_tbl (
    product_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    product_value FLOAT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category (category_id)
);

alter table product_tbl 
add constraint category_id
foreign key (category_id)
references category_tbl (category_id);

			
INSERT INTO myapp.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com',AES_ENCRYPT
('password', '$2a$12$Jea.ZfUxizSY2/HH9JO7aOVBw2.28uQBWD1C9hk7XAYTiIZx5hDLa'));
INSERT INTO myapp.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('edwar'), UPPER('fernandez'), 'edwardavid@gamil.com',AES_ENCRYPT
('aprendizsena', '$2a$12$Jea.ZfUxizSY2/HH9JO7aOVBw2.28uQBWD1C9hk7XAYTiIZx5hDLa'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$12$Jea.ZfUxizSY2/HH9JO7aOVBw2.28uQBWD1C9hk7XAYTiIZx5hDLa') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 2;

drop database MyBase;            
												