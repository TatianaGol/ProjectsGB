-- create
CREATE TABLE classmates (
  id SERIAL PRIMARY KEY,
  name TEXT(70) NOT NULL,
  age CHAR(3) NOT NULL,
  address TEXT(150) NOT NULL
);

-- insert
INSERT INTO classmates (id, name, age, address) VALUES
	(default, 'Антон Петров', 16, 'ул. Рижская, д. 7, кв. 15'),
	(default, 'Елена Сидорова', 16, 'ул. Новгородска, д. 25, кв. 89'),
	(default, 'Мария Иванова', 17, 'ул. Южная, д. 15, кв. 72'),
	(default, 'Павел Смирнов', 16, 'ул. Осенняя, д. 8, кв. 19'),
	(default, 'Алексей Ефремов', 17, 'ул. Вишневая, д. 52, кв. 135');


-- fetch 
SELECT * FROM classmates;
