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
    ('Marie', 'Chantal', 19850220, 4500, 'https://Portfolio/MarieChantalPortfolio', 'https://github.com/MarieChantal/'),
    ('Jean', 'Claude', 19980512, 2400, 'https://Portfolio/JeanClaudePortfolio', 'https://github.com/JeanClaude/'),
    ('Tintin', 'EtMilou', 19991228, 1600, null, 'https://github.com/TintinEtMilou/'),
    ('Tournesol', 'Fleur', 20010724, 1950, 'https://Portfolio/TournesolFleurPortfolio', null),
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
    ('React.js', 1),
    ('Express', 1),
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
select *
from candidates
where (year(current_date) - year(birthday) - (right(current_date,5) < right(birthday,5))
) < 30


-- **Select candidates asking for **less** **than** 50K
select *
from candidates
where (salary * 12) < 50000

-- **Select candidates who have an **online** portfolio
select first_name, portfolio
from candidates
where portfolio is not NULL

-- **Select candidates who have a github
select first_name, github
from candidates
where github is not NULL

-- **Select candidates who have an **online** portfolio **and** a github account
select first_name, github, portfolio
from candidates
where github = portfolio
is not NULL

-- **Select candidates who speak English
select first_name, languages.name
from candidates
    inner join languages on candidates.id = candidate_id
where name = 'English'

-- **Select candidates who know React
select first_name, programming.name
from candidates
    inner join programming on candidates.id = candidate_id
where name = 'React.js'

-- **Select candidates who know React **and** Express
select first_name, programming.name
from candidates
    inner join programming on candidates.id = candidate_id
where name in  ('React.js', 'Express')
