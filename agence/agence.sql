CREATE TABLE candidates 
(id INT PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR
(50),
last_name VARCHAR
(50),
birthday INT,
salary INT,
portfolio TEXT,
github TEXT)


CREATE TABLE languages 
(id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR
(50),
candidate_id INT,
 FOREIGN KEY
(candidate_id) REFERENCES candidates
(id))


CREATE TABLE programming 
(id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR
(50),
candidate_id INT,
 FOREIGN KEY
(candidate_id) REFERENCES candidates
(id))