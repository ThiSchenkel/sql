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

INSERT  INTO candidates
    (first_name, last_name, birthday, salary, portfolio, github)
VALUES
    ('Marie', 'Chantal', 20000220, 2500, 'https://Portfolio/MarieChantalPortfolio', 'https://github.com/MarieChantal/'),
    ('Jean', 'Claude', 19980512, 2400, 'https://Portfolio/JeanClaudePortfolio', 'https://github.com/JeanClaude/'),
    ('Tintin', 'EtMilou', 20161228, 1600, 'https://Portfolio/TintinEtMilouPortfolio', 'https://github.com/TintinEtMilou/'),
    ('Tournesol', 'Fleur', 20010724, 1950, 'https://Portfolio/TournesolFleurPortfolio', 'https://github.com/TournesolFleur/'),
    ('Captain', 'Haddock', 19950110, 3000, 'https://Portfolio/CaptainHaddockPortfolio', 'https://github.com/CaptainHaddock/');



CREATE TABLE languages 
(id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR
(50),
candidate_id INT,
 FOREIGN KEY
(candidate_id) REFERENCES candidates
(id))

INSERT  INTO languages
    (name, candidate_id)
VALUES
    ('English', 1),
    ('Spanish', 2),
    ('French', 5),
    ('Italian', 3),
    ('German', 2),
    ('Chinese', 4),
    ('Japanese', 1),
    ('Korean', 5);


CREATE TABLE programming 
(id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR
(50),
candidate_id INT,
 FOREIGN KEY
(candidate_id) REFERENCES candidates
(id))

INSERT  INTO programming
    (name, candidate_id)
VALUES
    ('Javascript', 2),
    ('React.js', 4),
    ('C++', 1),
    ('React Native', 3),
    ('HTML, CSS, JS', 2),
    ('Bootstrap', 5),
    ('Python', 3),
    ('MongoDB', 5);