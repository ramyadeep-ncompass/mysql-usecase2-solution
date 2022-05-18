DROP students;
DROP departments;

CREATE TABLE departments(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50)
);

CREATE TABLE students(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50),
    dept_id int  
);


INSERT INTO departments (name) VALUES ('CSE'),('ECE'),('EEE'),('CE'),('ME');

INSERT INTO students (name,dept_id) VALUES 
    ('Will Olson',2),   
    ('Taylor Annable',3),
    ('Honey Kain',1),
    ('Tamara Jenkins',4),
    ('Joseph Carr',4),
    ('Keith Shortle',5),
    ('Genevieve Clayton',2),
    ('Vernon Hunter',3),
    ('Kendrick Males',1),
    ('Kendrick Males II',8),
    ('Kendrick Males III',9),
    ('Vernon Hunter II',10);
    
# # 2. Inner joins
#     SELECT * FROM students INNER JOIN departments ON students.id = departments.id;
# # 3. left
    # SELECT * FROM students LEFT JOIN departments ON students.id = departments.id;
# # 4. Right
#     SELECT * FROM students RIGHT JOIN departments ON students.id = departments.id;
# # 5. Cross
#     SELECT * FROM students CROSS JOIN departments;