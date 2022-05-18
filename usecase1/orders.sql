# ORDER_NUM	CUST_CODE	AGENT_CODE	AMOUNT	ORDER_DATE
DROP TABLE orders;

CREATE TABLE orders (
    order_num CHAR(4) PRIMARY KEY,
    cust_code CHAR(4),
    agent_code CHAR(4),
    amount INT NOT NULL,
    order_date VARCHAR(10) NOT NULL,
    FOREIGN KEY(cust_code) REFERENCES customer(cust_code) ON DELETE CASCADE,
    FOREIGN KEY(agent_code) REFERENCES agent(agent_code) ON DELETE CASCADE
);

INSERT INTO orders (order_num,cust_code,agent_code,amount,order_date) VALUES
    ('O001','C001','A001',50000,'44532'),
    ('O002','C002','A002',3000,'26/03/2021'),
    ('O003','C005','A004',25000,'21/01/2021'),
    ('O004','C003','A003',6000,'44350'),
    ('O006','C004','A005',100000,'13/09/2019')