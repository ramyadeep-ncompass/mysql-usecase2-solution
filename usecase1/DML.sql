# DML
# 1. INSERT
    INSERT INTO agent (agent_code,agent_name,country,phone_no,status) VALUES ('A006','Ramyadeep','India',9844342346,'0');

# 2. UPDATE
    UPDATE agent SET status = '1' WHERE agent_name = 'Ramyadeep';

# 3. DELETE
    DELETE FROM agent WHERE agent_name = 'Ramyadeep';

# 4. SELECT
    SELECT * FROM AGENT;

# 5.WHERE 
    SELECT * FROM AGENT WHERE agent_code = 'A003';


# Aggregate functinos

#     MIN
    SELECT MIN(stock) FROM item;
    SELECT item_name , MIN(stock) FROM item;

#     MAX
    SELECT MAX(stock) FROM item;
    SELECT item_name , MAX(stock) FROM item;

#     SUM
    SELECT SUM(amount) AS total_order_ammount FROM orders;
    
#     AVG
    SELECT AVG(amount) AS avg_order_price FROM orders;

#     COUNT
    SELECT COUNT(*) AS total_agents FROM agent;

# LIKE operator
    # Finds any values that start with "a"
    SELECT * FROM agent WHERE agent_name LIKE 'a%';
    
    # Finds any values that end with "a"
    SELECT * FROM agent WHERE agent_name LIKE '%a';
    
    # Finds any values that have "or" in any position
    SELECT * FROM agent WHERE agent_name LIKE '%or%';
    
    # Finds any values that have "r" in the second position
    SELECT * FROM agent WHERE agent_name LIKE '_r%';
    
    # Finds any values that start with "a" and ends with "o"
    SELECT * FROM agent WHERE agent_name LIKE 's%a';

# Joins
# 1. Outer joins
    SELECT * FROM customer OUTER JOIN agent ON customer.agent_code = agent.agent_code;
# 2. Inner joins
    SELECT * FROM customer INNER JOIN agent ON customer.agent_code = agent.agent_code;
# 3. left
    SELECT * FROM customer LEFT JOIN agent ON customer.agent_code = agent.agent_code;
# 4. Right
    SELECT * FROM customer RIGHT JOIN agent ON customer.agent_code = agent.agent_code;
# 5. Cross
    SELECT * FROM customer CROSS JOIN agent;
    
    