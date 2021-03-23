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