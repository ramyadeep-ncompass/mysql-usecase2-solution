DROP TABLE agent;

CREATE TABLE  agent (
    agent_code CHAR(4) PRIMARY KEY,
    agent_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    phone_no BIGINT NOT NULL UNIQUE,
    status ENUM('0','1') DEFAULT '0' 
);


INSERT INTO agent (agent_code,agent_name,country,phone_no,status) VALUES
    ('A001','Joe','Canada',2345623452,'0'),
    ('A002','Sara','India',1234567890,'1'),
    ('A003','Wiley','Bahamas',987654321,'1'),
    ('A004','Katniss','Ireland',3456543698,'1'),
    ('A005','Arjun','India',9844342345,'0');



# question 2
# ALTER TABLE agent add column commission decimal(3,2) default 0;

# question 3
# ALTER TABLE agent DROP COLUMN phone_no;

# question 3
# ALTER TABLE agent RENAME COLUMN commission TO commission_percentage;

# question 4
# CREATE TABLE agent_details SELECT * FROM agent;

