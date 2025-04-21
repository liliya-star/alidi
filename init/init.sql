DROP TABLE IF EXISTS stores;
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    city_desc TEXT,
    district TEXT
);

DROP TABLE IF EXISTS product;
CREATE TABLE product (
    cma TEXT,
    art_no INT PRIMARY KEY,
    art_name TEXT
);

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    store_id INT,
    date_of_day DATE,
    art_no INT,
    sell_qty_colli NUMERIC,
    sell_val_gsp NUMERIC
);

DROP TABLE IF EXISTS prod_disc;
CREATE TABLE prod_disc (
    date_from DATE,
    date_to DATE,
    art_no INT,
    store_id INT,
    old_colli_gsp NUMERIC,
    discount_colli_gsp NUMERIC
);

-- Вставка данных
INSERT INTO stores (store_id, city_desc, district) VALUES
(10, 'Moscow', 'Moscow'),
(11, 'Moscow', 'Moscow'),
(21, 'Nizhny Novgorod', 'North-West');

INSERT INTO product (cma, art_no, art_name) VALUES
('Fruits / Vegetables', 456131, 'ПЕТРУШКА КУДРЯВАЯ'),
('Fruits / Vegetables', 432456, 'КОМПОЗИЦИЯ  В КЕРАМИКЕ D-15'),
('Fish', 175436, '460Г СЕЛЬДЬ Ф/К С ДЫМКОМ МАТЬЕ'),
('Grocery', 538433, '500Г ХЛОПЬЯ ГРЕЧНЕВЫЕ GARNISH');

INSERT INTO sales (store_id, date_of_day, art_no, sell_qty_colli, sell_val_gsp) VALUES
(59, '2018-12-22', 331716, 1, 253.39),
(356, '2018-02-01', 482308, 4, 97.82),
(55, '2018-04-30', 139947, 1, 57.45),
(65, '2018-08-08', 494125, 1, 465.25),
(18, '2017-11-10', 128556, 1.175, 950.66),
(11, '2018-03-24', 50240, 1, 50.84);

INSERT INTO prod_disc (date_from, date_to, art_no, store_id, old_colli_gsp, discount_colli_gsp) VALUES
('2018-12-05', '2019-12-05', 526312, 356, 95.2, 83.31),
('2019-11-06', '2019-11-07', 484955, 310, 599.7, 641.7),
('2017-01-17', '2017-02-01', 240849, 29, 294.9882, 260),
('2020-06-30', '2020-08-12', 457656, 28, 18.888, 11.39),
('2017-08-31', '2017-10-31', 341832, 23, 1736.0042, 1389),
('2019-11-06', '2019-12-06', 520328, 357, 200, 160);
