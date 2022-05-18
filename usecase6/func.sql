DROP PROCEDURE IF EXISTS validate_emp;

DELIMITER //
CREATE PROCEDURE validate_emp(IN nid VARCHAR(4))
BEGIN
    SELECT * FROM biodata WHERE biodata.NID = nid 
    AND validate_email(biodata.EMAIL) = 1
    AND validate_age(biodata.AGE) = 1;       
END //

DELIMITER ;

CALL validate_emp('N002');



# DELIMITER $$     
# CREATE FUNCTION validate_email( email VARCHAR(50))  
# RETURNS int
# DETERMINISTIC
# BEGIN
# 	RETURN email REGEXP "^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@([a-z0-9]+[a-z0-9-]*)*[a-z0-9]+(\.([a-z0-9]+[a-z0-9-]*)*[a-z0-9]+)*\.[a-z]{2,6}$";
# END$$
# DELIMITER ; 

# DELIMITER $$     
# CREATE FUNCTION validate_age( age VARCHAR(50))  
# RETURNS int
# DETERMINISTIC
# BEGIN
# 	RETURN age REGEXP "^[0-9]*$";
# END$$
# DELIMITER ; 