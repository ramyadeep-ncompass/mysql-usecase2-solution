# PLACEMENTS		
# S_ID	C_ID	PACKAGE
# S001	C001	2000000
# S002	C001	2000000
# S003	C002	1200000
# S004	C004	700000
# S004	C006	400000
# S006	C004	700000

DROP TABLE placements;

CREATE TABLE placements(
    s_id CHAR(4),
    c_id CHAR(4),
    package int
);

INSERT INTO placements (s_id,c_id,package) VALUES 
    ('S001','C001',	2000000),
    ('S002','C001',	2000000),
    ('S003','C002',	1200000),
    ('S004','C004',	700000),
    ('S004','C006',	400000),
    ('S006','C004',	700000);