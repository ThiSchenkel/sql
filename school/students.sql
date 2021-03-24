
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



-- ## Rapport lvl 2
-- Faites les requêtes pour :

-- 1. Pour l’étudiant.e d’ID 5, récupérer toutes les colonnes sur l’étudiant.e et ses activités favorites
SELECT students.name, students.city, favorites.class, favorites.sport
FROM students, favorites
WHERE
(students.id= favorites.student_id)
    AND students.id = 5

-- 2. Pour l’étudiant.e d’ID 4, récupérer son nom et son sport préféré
SELECT students.name, favorites.sport
FROM students, favorites
WHERE
(students.id = favorites.student_id)
    AND students.id = 4

-- 3. Pour l’étudiant.e d’ID 1, récupérer son nom et sa matière préférée
SELECT students.name, favorites.class
FROM students, favorites
WHERE
(students.id= favorites.student_id)
    AND students.id = 1

-- 4. Récupérer toutes les colonnes de l’étudiant.e qui aime la musique
select students.name, students.city, favorites.class, favorites.sport, languages.name
From students, favorites, languages, students_languages
where (students.id = students_languages.student_id)
    and (students.id = favorites.student_id)
    and (languages.id = students_languages.language_id)
    and favorites.class = 'music'

-- 5. Récupérer le nom des étudiant.e.s qui aime le tennis
select students.name, favorites.sport
From students, favorites
where students.id = favorites.student_id
    and favorites.sport = 'tennis'

-- 6. Récupérer le nom des étudiant.e.s qui aime les matières artistiques
select students.name, favorites.class
From students, favorites
where students.id = favorites.student_id
    and favorites.class = 'Arts'

-- 7. Récupérer le nombre d’étudiant.e.s de la ville de Paris
select COUNT(students.city)
From students
WHERE students.city = "Paris"



-- ## Rapport lvl 3
-- Faites les requêtes pour :

-- 1. Récupérer les langues et toutes les colonnes de l’étudiant.e d’ID 1
select students.name, students.city, favorites.class, favorites.sport, languages.name
From students, favorites, languages, students_languages
where (students.id = students_languages.student_id)
    and (students.id = favorites.student_id)
    and (languages.id = students_languages.language_id)
    and students.id = 1

-- 2. Récupérer les langues et toutes les colonnes de l’étudiant.e d’ID 4
select students.name, students.city, favorites.class, favorites.sport, languages.name
From students, favorites, languages, students_languages
where (students.id = students_languages.student_id)
    and (students.id = favorites.student_id)
    and (languages.id = students_languages.language_id)
    and students.id = 4

-- 3. Récupérer la colonne langue et le nom de l’étudiant.e d’ID 5
select students.name, languages.name
From students, languages, students_languages
where (students.id = students_languages.student_id)
    and (languages.id = students_languages.language_id)
    and students.id = 5

-- 4. Pour chaque étudiant.e.s (6), faîtes une requêtes pour récupérer le nombre de langues parlées par cet étudiant.e.s avec leurs noms et le nombres de langues
select students.name, count(students_languages.language_id)
From students, students_languages
WHERE (students.id = students_languages.student_id)
group by students.name



-- ## Bonus
-- 1. Récupérer les étudiant.e.s qui ont un “e” dans leur prénom
select students.name
from students
where students.name like "%e%"

-- 2. Récupérer le sport préférés des étudiant.e.s qui ont un “e” dans leur prénom
select students.name, favorites.sport
from students, favorites
where (students.id = favorites.student_id)
    and students.name like "%e%"

-- 3. Récupérer la classe préférées des étudiant.e.s qui ont un “i” dans le nom de leur ville
select students.name, favorites.class
from students, favorites
where (students.id = favorites.student_id)
    and students.city like "%i%"
