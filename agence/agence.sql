CREATE TABLE candidates 
(id INT PRIMARY KEY AUTO_INCREMENT, 
first_name VARCHAR
(50),
last_name VARCHAR
(50),
birthday DATE,
salary INT,
portfolio TEXT,
github TEXT)

INSERT  INTO candidates
    (first_name, last_name, birthday, salary, portfolio, github)
VALUES
    ('Marie', 'Chantal', 19850220, 2500, 'https://Portfolio/MarieChantalPortfolio', 'https://github.com/MarieChantal/'),
    ('Jean', 'Claude', 19980512, 2400, 'https://Portfolio/JeanClaudePortfolio', 'https://github.com/JeanClaude/'),
    ('Tintin', 'EtMilou', 19991228, 1600, 'https://Portfolio/TintinEtMilouPortfolio', 'https://github.com/TintinEtMilou/'),
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


-- **Select all candidates
SELECT *
FROM candidates

-- **Select **count** candidates
select count(*) candidates
from candidates

-- **Select candidates **younger** **than** 30 years old
-- (calcul de l'age de chaque candidats)
select id, first_name, last_name, (DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(birthday)), '%Y')+0) AS age
from candidates


-- **Select candidates asking for **less** **than** 50K
-- **Select candidates who have an **online** portfolio
-- **Select candidates who have a github account
-- **Select candidates who have an **online** portfolio **and** a github account
-- **Select candidates who speak English
-- **Select candidates who know React
-- **Select candidates who know React **and** Express