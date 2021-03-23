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

