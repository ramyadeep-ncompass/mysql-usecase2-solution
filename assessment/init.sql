DROP TABLE movie;
CREATE TABLE movie (
    id VARCHAR(4),
    name VARCHAR(100),
    imdb DECIMAL(2,1),
    released_on DATE,
    language VARCHAR(100)
);

SELECT(STR_TO_DATE('1 October 2010','%d %M %Y'));
INSERT INTO movie (id,name,imdb,released_on,language) VALUES
    ('M001','Enthiran','7.1',STR_TO_DATE('1 October 2010','%d %M %Y'),'Tamil'),
    ('M002','Avengers Endgame',8.4,STR_TO_DATE('26 April 2019','%d %M %Y'),'English'),
    ('M003','3 Idiots',8.4,STR_TO_DATE('25 December 2009','%d %M %Y'),'Hindi'),
    ('M004','Interstellar',8.6,STR_TO_DATE('7 November 2014','%d %M %Y'),'English'),
    ('M005','Munna Bhai',8.1	,STR_TO_DATE('19 December 2003','%d %M %Y'),'Hindi'),
    ('M006','I',7.4,STR_TO_DATE('14 January 2015','%d %M %Y'),'Tamil'),
    ('M007','The Prestige',8.5,STR_TO_DATE('20 October 2006','%d %M %Y'),'English'),
    ('M008','PK',8.1,STR_TO_DATE('19 December 2014','%d %M %Y'),'Hindi'),
    ('M009','Tenet',7.4,STR_TO_DATE('4 December 2020','%d %M %Y'),'English');




CREATE TABLE director(
    id VARCHAR(4),
    name VARCHAR(100),
    age TINYINT
);

INSERT INTO director (id,name,age) VALUES
    ('D001','Anthony Joe Russo',45),
    ('D002','Christopher Nolan',51),
    ('D003','Quentin Tarantino',58),
    ('D004','Rajkumar Hirani',65),
    ('D005','S Shankar',49);



CREATE TABLE directed_by (
    director_id VARCHAR(4),
    movie_id VARCHAR(4),
    budget INT
);

INSERT INTO directed_by (director_id,movie_id,budget) VALUES
    ('D005','M001',132),
    ('D004','M003',550),
    ('D004','M008',85),
    ('D005','M006',100),
    ('D001','M002',2642),
    ('D002','M004',1224),
    ('D002','M007',300),
    ('D002','M009',1480),
    ('D004','M005',36);

# Q1. Write a query to get movie name, IMDb, director name, age which have budget more than 500.
SELECT 
    M.name AS MOVIE,
    D.name AS DIRECTOR,
    DB.budget AS BUDGET 
FROM movie M
    LEFT JOIN directed_by DB ON M.id = DB.movie_id
    LEFT JOIN director D ON D.id = DB.director_id
WHERE DB.budget > 500;

# Q2. Get the count of above 8 IMDb rating movies directed by each director.

SELECT  
    D.name AS DIRECTOR,    
    M.imdb AS IMDB,
    COUNT(IMDB) AS TOTAL_MOVIES 
FROM directed_by DB 
    LEFT JOIN movie M ON M.id = DB.movie_id
    LEFT JOIN director D ON D.id = DB.director_id
GROUP BY D.id HAVING M.imdb > 8;

# Q3. How many English movies were released between 2011 to 2021 whose director is older than 50 years.

# Movie Name	Released Date	Director	Age
SELECT 
    M.name AS MOVIE_NAME,
    M.released_on AS RELEASED_DATE,
    D.name AS DIRECTOR,
    D.age AS AGE
FROM movie M
    LEFT JOIN directed_by DB ON M.id = DB.movie_id
    LEFT JOIN director D ON D.id = DB.director_id
WHERE YEAR(M.released_on) BETWEEN 2011 AND 2022 AND D.age > 50 AND M.language = 'English';



# Q4. Categorise Hindi and Tamil movies based on the IMDb rating. Movies below 8 are good and >=8 are best.

# Movie Name	IMDb 	Category	Director

SELECT
    M.NAME AS MOVIE,
    M.imdb AS RATING,
CASE
    WHEN M.imdb >= 8 THEN "BEST"
    ELSE "GOOD"
END AS CATEGORY,
D.name AS DIRECTOR
FROM movie M
    LEFT JOIN directed_by DB ON M.id = DB.movie_id
    LEFT JOIN director D ON D.id = DB.director_id
WHERE M.language = 'Hindi' OR M.language = 'Tamil';