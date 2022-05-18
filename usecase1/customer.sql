# CUST_CODE	CUST_NAME	CUST_CITY	PHONE_NO	AGENT_CODE
DROP TABLE customer;

CREATE TABLE customer (
    cust_code CHAR(4) PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    phone_no  VARCHAR(100) NOT NULL UNIQUE,
    agent_code CHAR(4),
    FOREIGN KEY (agent_code) REFERENCES agent(agent_code) ON DELETE CASCADE
);

INSERT INTO customer (cust_code,cust_name,cust_city,phone_no,agent_code) VALUES
    ('C001','Albert','Chennai',9798865876,'A001'),
    ('C002','Ravi','Bangalore',9876123456,'A002'),
    ('C003','Archana','Chennai',94523098123,'A004'),
    ('C004','Riya','Trichy',9612309876,'A002'),
    ('C005','Pavithra','Kanyakumari',9612309856,'A005');