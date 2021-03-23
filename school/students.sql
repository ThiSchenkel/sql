
-- Students
CREATE TABLE students
(
    id INT,
    name CHAR (30),
    city CHAR (30),
    PRIMARY KEY (id)
)
ENGINE=INNODB

INSERT INTO `students`(`
id`,
`name
`, `city`) VALUES
('1', 'Véronique','Paris'),
('2', 'Steeven','Lyon'),
('3', 'Marc','Marseille'),
('4', 'Nour','Lyon'),
('5', 'Romain','Paris'),
('6', 'Sophie','Paris');



-- Languages
CREATE TABLE languages
(
    id INT,
    name CHAR (30),
    PRIMARY KEY (id)
)
ENGINE=INNODB

INSERT INTO `languages`(`
id`,
`name
`) VALUES
('1', 'French'),
('2', 'English'),
('3', 'German'),
('4', 'Spanish'),
('5', 'Mandarin');



-- Favorites
CREATE TABLE favorites
(
    id INT,
    class CHAR (30),
    sport CHAR (30),
    student_id INT,
    PRIMARY KEY (id)
)
ENGINE=INNODB

INSERT INTO `favorites `(`
id`,
`class
`, `sport`, `student_id`) VALUES
('1', 'Maths', 'Crickets', '2'),
('2', 'Music', 'Hip-Hop', '6'),
('3', 'Arts', 'Boxing', '1'),
('4', 'Literature', 'Tennis', '3'),
('5', 'Computer science', 'Tennis', '5'),
('6', 'Arts', 'Baseball', '4');



-- Students languages
CREATE TABLE students_languages
(
    id INT,
    student_id INT,
    language_id INT,
    PRIMARY KEY (id)
)
ENGINE=INNODB

INSERT INTO `students_languages `(`
id`,
`student_id
`, `language_id`) VALUES
('1', '1', '1'),
('2', '1', '2'),
('3', '2', '1'),
('4', '2', '3'),
('5', '3', '1'),
('6', '4', '1'),
('7', '4', '2'),
('8', '4', '4'),
('9', '4', '5'),
('10', '5', '1'),
('11', '5', '5'),
('12', '6', '1'),
('13', '6', '2'),
('14', '6', '3');


-- ## Rapport lvl 1
-- Faites les requêtes pour :

-- 1. Récupérer toutes les colonnes de l’étudiant.e avec l’ID 3
SELECT *
FROM `students
` WHERE id = 3

-- 2. Récupérer toutes les colonnes l’étudiant.e avec l’ID 6
SELECT *
FROM `students
` WHERE id = 6

-- 3. Récupérer le nom et la ville de l’étudiant.e avec l’ID 1
SELECT `name
`, `city` FROM `students` WHERE id = 1

-- 4. Récupérer le nom de l’étudiant.e avec l’ID 2
SELECT `name
` FROM `students` WHERE id = 2

-- 5. Récupérer toutes les colonnes des étudiant.e.s de la ville de Paris
SELECT *
FROM `students
` WHERE city = 'Paris'

-- 6. Récupérer les noms des étudiant.es de la ville de Lyon
SELECT *
FROM `students
` WHERE city = 'Lyon'




