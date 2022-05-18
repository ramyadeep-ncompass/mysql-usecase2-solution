DROP TABLE item;

CREATE TABLE item(
    item_code INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(50) NOT NULL,
    price DECIMAL(6,3) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO item (item_name,price,stock) VALUES
    ('Mango',50,123),
    ('Orange',18.58,13),
    ('Bannana',12.52,21),
    ('Grape',32.05,23),
    ('Apple',60.65,25);


