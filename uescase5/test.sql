DROP PROCEDURE IF EXISTS validate_emp;
DELIMITER //
CREATE PROCEDURE validate_emp(IN nid VARCHAR(4))
BEGIN
    SELECT * FROM biodata WHERE biodata.NID = nid;     
END //

DELIMITER ;

