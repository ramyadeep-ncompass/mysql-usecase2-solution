USE usecase3;
DROP TABLE analysis;

# Create new table
CREATE TABLE analysis(
    time DATETIME,
    device ENUM('D1','D2','D3'),
    consumption DECIMAL(4,3)
);

#  load csv file into the table
LOAD DATA LOCAL INFILE 'UC_03.csv' INTO TABLE analysis
    FIELDS TERMINATED BY ',' 
    IGNORE 1 ROWS;

# Show first 10 records
SELECT * FROM analysis LIMIT 10;