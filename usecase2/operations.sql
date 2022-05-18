# SELECT student.name, company.name , package FROM placements 
#     JOIN student ON placements.s_id = student.id
#     JOIN company ON placements.c_id = company.id;


 
 
 
#  question 1

SELECT student.name AS STUDENT, company.name AS COMPANY , package AS PACKAGE  FROM placements 
    JOIN student ON placements.s_id = student.id
    JOIN company ON placements.c_id = company.id 
ORDER BY STUDENT ASC LIMIT 2;
    
# QUESTION 2

SELECT student.name AS STUDENT,
       student.department AS DEPARTMENT,
       IF(ISNULL(company.name),'YES','NO') AS PLACED,
       IFNULL(company.name,'-' )AS COMPANY,
       IFNULL(placements.package,'-') AS PACKAGE
FROM student 
    LEFT JOIN placements ON student.id = placements.s_id  
    LEFT JOIN company ON placements.c_id = company.id 
WHERE student.department = 'ECE'
ORDER BY STUDENT ASC;

# question 3
SELECT company.name AS COMPANY, COUNT(placements.c_id) AS "NO OF STUDENTS" FROM placements 
    RIGHT JOIN company ON company.id = placements.c_id GROUP BY company.id;

# question 4
SELECT MONTHNAME(interview_date) AS MONTH, name AS COMPANY FROM company 
    WHERE MONTHNAME(interview_date) = 'SEPTEMBER'
    ORDER BY COMPANY;
    


# question 5
SELECT name AS COMPANY,DATE_FORMAT(interview_date, "%Y-%m-%d") AS 'DATE' FROM company 
 WHERE DATEDIFF(interview_date,'2020-12-3') < 0 ORDER BY 'DATE';
 
#question 6
SELECT student.name AS STUDENT,company.name AS COMPANY FROM placements 
    JOIN student ON placements.s_id = student.id
    JOIN company ON company.id = placements.c_id
WHERE student.id IN (
    SELECT placements.s_id FROM placements GROUP BY placements.s_id HAVING  COUNT(placements.c_id) > 1
);
    
#question 7
SELECT student.name AS STUDENT, 
    student.department AS DEPARTMENT,
    student.cgpa AS CGPA FROM student 
WHERE cgpa > 7 AND id NOT IN (
    SELECT DISTINCT s_id  FROM placements
);

# question 8
SELECT name AS COMPANY, location AS LOCATION FROM company WHERE location LIKE 'B%';
 
