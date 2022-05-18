#  Q1

SELECT employee.id AS ID, department.name AS DEPARTMENT, COUNT(*) AS STRENGTH FROM employee 
LEFT JOIN department ON employee.department= department.id GROUP BY department.id;

# Q2

SELECT employee.id AS ID,employee.name AS EMPLOYEE,
IFNULL((SELECT name from employee WHERE id = l1),'-') AS L1, 
IFNULL((SELECT name from employee WHERE id = l2),'-') AS L2 FROM employee 
LEFT JOIN reporting ON employee.id=reporting.id;

# Q3

SELECT 
    employee.id AS ID, 
    employee.name AS EMPLOYEE,
    department.name AS DEPARTMENT,
    roles.name AS ROLE,
    IF (emp_active_date.resigned_on IS NUll,'ACTIVE','RESIGNED') AS STATUS,
    IF (employee.gender = 'M','MALE','FEMALE') AS GENDER,
    CONCAT(DATEDIFF(CURDATE(),emp_active_date.active_from)/360,' years ',
           (DATEDIFF(CURDATE(),emp_active_date.active_from)%360)/30,' months ',
           ((DATEDIFF(CURDATE(),emp_active_date.active_from)%360)/30)/7,' days') AS TERM
FROM employee
    LEFT JOIN department ON employee.department = department.id
    LEFT JOIN roles ON employee.role_id = roles.id
    LEFT JOIN emp_active_date ON employee.id = emp_active_date.id;
    
# Q4
SELECT 
    employee.id AS ID, 
    employee.name AS EMPLOYEE,
    department.name AS DEPARTMENT,
    DATEDIFF(CURDATE(),emp_active_date.active_from) AS DAYS
FROM employee
    LEFT JOIN department ON employee.department = department.id
    LEFT JOIN emp_active_date ON employee.id = emp_active_date.id
WHERE DATEDIFF(CURDATE(),emp_active_date.active_from) > 1500;

# Q5

SELECT department.name as DEPARTMENT,
    (COUNT(IF(gender = 'F', 1, NULL))/ COUNT(*) * 100) as PERCENTAGE FROM department 
    LEFT JOIN employee ON department.id=employee.department
GROUP BY department.id;

SELECT COUNT(*) FROM department 
LEFT JOIN employee on employee.department=department.id GROUP BY gender;


# UC 6, Q.3 query for validation 
SELECT 
    EMP.id AS EMP_ID,
    EMP.name AS EMP_NAME,
    EMP.gender AS GENDER,
    BD.age AS AGE,
    BD.email AS EMAIL,
    DPT.name AS DEPARTMENT,
    ROL.name AS ROLE,
    IF (EMP.active = 1,'YES','NO') AS ACTIVE_STATUS,
    CONCAT(
        TIMESTAMPDIFF( YEAR, EAD.active_from, CURDATE() ),' years ',
        TIMESTAMPDIFF( MONTH, EAD.active_from, CURDATE() ) % 12,' months ',
        FLOOR(TIMESTAMPDIFF( DAY, EAD.active_from, CURDATE() ) % 30.4375), ' days'
    ) AS TERM
FROM biodata BD
    LEFT JOIN employment EPT ON EPT.nid = BD.nid
    LEFT JOIN employee EMP ON EMP.id = EPT.eid
    LEFT JOIN department DPT ON DPT.id = EMP.department
    LEFT JOIN roles ROL ON ROL.id = EMP.role_id
    LEFT JOIN emp_active_date EAD ON EAD.id = EMP.id;