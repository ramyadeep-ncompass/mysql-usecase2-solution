#         STUDENT	
# ID	NAME	DEPARTMENT	CGPA
# S001	ARUN	CS	8
# S002	GITA	CS	7.5
# S003	KUMAR	IT	6
# S004	ROHIT	IT	8.5
# S005	YAMUNA	ECE	9
# S006	YOGESH	ECE	9

DROP TABLE student;

CREATE TABLE student (
    id CHAR(4) PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(3),
    cgpa DECIMAL(2,1)
);

INSERT INTO student (id,name,department,cgpa) VALUES
    ('S001','ARUN','CS',8),
    ('S002','GITA','CS',7.5),
    ('S003','KUMAR','IT',6),
    ('S004','ROHIT','IT',8.5),
    ('S005','YAMUNA','ECE',9),
    ('S006','YOGESH','ECE',9);