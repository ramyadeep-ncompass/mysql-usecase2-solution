
CREATE TABLE employee (
    id VARCHAR(4),
    name VARCHAR(100),
    department VARCHAR(4),
    active TINYINT,
    gender ENUM('M','F'),
    role_id VARCHAR(4)
);

INSERT INTO employee (id,name,department,active,gender,role_id) VALUES 
('E001','RAJKUMAR','D001',1,'M','R001'),
('E002','GANESH','D001',1,'M','R002'),
('E003','RAGHU','D001',1,'M','R003'),
('E004','CHITRA','D001',1,'F','R001'),
('E005','PRIYA','D001',1,'F','R002'),
('E006','PREM KUMAR','D001',1,'M','R003'),
('E007','KRISHNA','D002',1,'M','R006'),
('E008','PREETHI','D002',1,'F','R005'),
('E009','RAVI',	'D002',	0,	'M','R004'),
('E010','MEENA','D002',1,'F','R004');


CREATE TABLE department (
    id VARCHAR(4),
    name VARCHAR(100)
);

INSERT INTO department (id,name) VALUES
('D001','DEVELOPMENT'),
('D002','HR');


REPORTING 		



CREATE TABLE reporting(
    id VARCHAR(4),
    l1 VARCHAR(4),
    l2 VARCHAR(4)
);

INSERT INTO reporting (id,l1,l2) VALUES
('E001',NULL,NULL),
('E002',NULL,'E001'),
('E003','E002','E001'),
('E004',NULL,NULL),
('E005',NULL,'E004'),
('E006','E005','E004'),
('E007',NULL,NULL),
('E008',NULL,'E007'),
('E009','E008','E007'),
('E010','E008','E007');




CREATE TABLE roles(
    id VARCHAR(4),
    name VARCHAR(100)
);

INSERT INTO roles (id,name) VALUES
('R001','TEAM LEAD'),
('R002'	,'SR. DEVELOPER'),
('R003','DEVLOPER'),
('R004','MANAGER'),
('R005','SR. MANAGER'),
('R006','EXE. MANAGER');



		

CREATE TABLE emp_active_date(
    id VARCHAR(4),
    active_from DATETIME,
    resigned_on DATETIME
);

INSERT INTO emp_active_date (id,active_from,resigned_on) VALUES
('E001','2015-01-02',	NULL),
('E002','2016-03-01',	NULL),
('E003','2018-01-02',	NULL),
('E004','2014-11-01',	NULL),
('E005','2015-02-01',	NULL),
('E006','2019-01-02',	NULL),
('E010','2015-01-02',	NULL),
('E007','2013-01-02',	NULL),
('E008','2015-01-02',	NULL),
('E009','2017-11-05',	'2020-10-31');

CREATE TABLE biodata (
    nid VARCHAR(4),
    name VARCHAR(100),
    email VARCHAR(100),
    age VARCHAR(100)
);

INSERT INTO biodata (nid,name,email,age) VALUES
    ('N001', 'RAJKUMAR', 'rajkumar', '21'),
    ('N002', 'GANESH', 'g@gmail.com', '20'),
    ('N003', 'RAGHU', '', '22'),
    ('N004', 'CHITRA', 'c@gmail.com', '21'),
    ('N005', 'PRIYA', 'priya@gmail.com', 'abc'),
    ('N006', 'PREM KUMAR', '', '12'),
    ('N007', 'KRISHNA', 'kkr123@hotmail.in', '21'),
    ('N008', 'PREETHI', 'preethi18@mail.com', '20'),
    ('N009', 'RAVI', 'ravishankar@21gmail.com', '23.5'),
    ('N010', 'MEENA', 'meena@yahoo.in', '20');
    
CREATE TABLE employment (
    nid VARCHAR(4),
    eid VARCHAR(4)
);

INSERT INTO employment (nid,eid) VALUES
    ('N001','E001'),
    ('N002','E002'),
    ('N003','E003'),
    ('N004','E004'),
    ('N005','E005'),
    ('N006','E006'),
    ('N007','E007'),
    ('N008','E008'),
    ('N009','E009'),
    ('N010','E010');
    

    