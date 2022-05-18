# DROP FUNCTION validate_email;
# DELIMITER $$     
#     CREATE FUNCTION validate_email( email VARCHAR(50))  
#     RETURNS INT
#     DETERMINISTIC
#     BEGIN
#         RETURN email REGEXP "^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@([a-z0-9]+[a-z0-9-]*)*[a-z0-9]+(\.([a-z0-9]+[a-z0-9-]*)*[a-z0-9]+)*\.[a-z]{2,6}$";
#     END$$
# DELIMITER ;


# DROP FUNCTION validate_age;
# DELIMITER $$     
#     CREATE FUNCTION validate_age( age VARCHAR(50))  
    
#     RETURNS INT
    
#     DETERMINISTIC
#     BEGIN
    
#         RETURN age REGEXP "^[0-9]*$";
    
#     END$$
    
# DELIMITER ; 

DROP PROCEDURE IF EXISTS validate_emp;

DELIMITER //
CREATE PROCEDURE validate_emp(IN nid VARCHAR(4), IN date DATETIME)
BEGIN

    # DECLARE current_date DATETIME;
    # DECLARE emp_id VARCHAR(4);
    
    # SELECT EMP.id, EAD.active_from  INTO emp_id, current_date
    # FROM biodata BD
    #     LEFT JOIN employment EPT ON EPT.nid = BD.nid
    #     LEFT JOIN employee EMP ON EMP.id = EPT.eid
    #     LEFT JOIN emp_active_date EAD ON EAD.id = EMP.id
    #     WHERE BD.nid='N002';
    
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
        ) AS TERM,
    FROM biodata BD
        LEFT JOIN employment EPT ON EPT.nid = BD.nid
        LEFT JOIN employee EMP ON EMP.id = EPT.eid
        LEFT JOIN department DPT ON DPT.id = EMP.department
        LEFT JOIN roles ROL ON ROL.id = EMP.role_id
        LEFT JOIN emp_active_date EAD ON EAD.id = EMP.id
    WHERE BD.nid = nid
        AND validate_email(BD.email) = 1
        AND validate_age(BD.age) = 1;
END //

DELIMITER ;

# CALL validate_emp('N002');


