show databases;

create database bms_zeugnis;
use bms_zeugnis;

select * from students;

drop database bms_zeugnis;

create table user (
                          id INT PRIMARY KEY AUTO_INCREMENT,
                          gender ENUM('Frau', 'Herr'),
                          firstname VARCHAR(50) NOT NULL,
                          lastname VARCHAR(50) NOT NULL,
                          birthday VARCHAR(10) NOT NULL,
                          address VARCHAR(100) NOT NULL,
                          zip INT(4) NOT NULL,
                          place VARCHAR(255) NOT NULL,
                          employer_name VARCHAR(100) NOT NULL,
                          employer_place VARCHAR(100) NOT NULL,
                          class_id INT NOT NULL
);

-- Insert sample values for the students table
INSERT INTO user (gender, firstname, lastname, birthday, address, zip, place, employer_name, employer_place, class_id)
VALUES
    ('Herr', 'John', 'Doe', '2003-05-15', '123 Main Street', 1234, 'Cityville', 'ABC Company', 'Business Park', 1),
    ('Frau', 'Jane', 'Smith', '2002-08-22', '456 Oak Avenue', 5678, 'Townsville', 'XYZ Corporation', 'Tech Center', 2),
    ('Herr', 'Mike', 'Johnson', '2003-01-10', '789 Pine Road', 9876, 'Villagetown', 'LMN Industries', 'Industrial Zone', 1),
    ('Frau', 'Emily', 'Williams', '2002-11-30', '101 Cedar Lane', 4321, 'Hamlet City', 'PQR Ltd.', 'Commercial District', 3),
    ('Herr', 'Alex', 'Brown', '2003-04-05', '222 Elm Street', 1357, 'Ruralville', 'EFG Enterprises', 'Downtown', 2),
    ('Frau', 'Sophie', 'Miller', '2002-07-18', '333 Maple Drive', 8642, 'Metropolis', 'HIJ Co.', 'Financial District', 3),
    ('Herr', 'Daniel', 'Garcia', '2003-02-25', '444 Birch Lane', 2468, 'Suburbia', 'NOP Corporation', 'Tech Park', 1),
    ('Frau', 'Olivia', 'Davis', '2002-09-12', '555 Oak Street', 9753, 'City Central', 'QRS Enterprises', 'Business Center', 2),
    ('Herr', 'William', 'Wilson', '2003-06-08', '666 Pine Avenue', 3210, 'Downtown', 'TUV Ltd.', 'Corporate Plaza', 3),
    ('Frau', 'Ava', 'Martinez', '2002-12-20', '777 Cedar Road', 4567, 'Urban City', 'VWX Industries', 'Innovation Hub', 1);






create table subjects (
                          id      INT PRIMARY KEY AUTO_INCREMENT,
                          subject VARCHAR(50) NOT NULL
);

INSERT INTO subjects (id, subject) VALUES
                                       (0, 'Englisch'),
                                       (0, 'Wirtschaft'),
                                       (0, 'FRW'),
                                       (0, 'Geschichte'),
                                       (0, 'Italienisch'),
                                       (0, 'Technik und Umwelt'),
                                       (0, 'Recht');

create table classes (
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         name VARCHAR(7) NOT NULL
);

INSERT INTO classes (id, name) VALUES
                                   (0, 'BM21 a'),
                                   (0, 'BM21 b'),
                                   (0, 'BM21 c'),
                                   (0, 'BM21 d');

INSERT INTO classes (id, name) VALUES
                                   (0, 'BM22 a'),
                                   (0, 'BM22 b'),
                                   (0, 'BM22 c'),
                                   (0, 'BM22 d'),
                                   (0, 'BM23 a'),
                                   (0, 'BM23 b'),
                                   (0, 'BM23 c'),
                                   (0, 'BM23 d');


select * from students;

create table semester (
                          id INT PRIMARY KEY AUTO_INCREMENT,
                          code VARCHAR(5) NOT NULL
);

INSERT INTO semester (code)
VALUES
    ('FR/22'), ('HE/22'),
    ('FR/23'), ('HE/23'),
    ('FR/24'), ('HE/24'),
    ('FR/25'), ('HE/25'),
    ('FR/26'), ('HE/26');



create table class_semester(
                               id          INT PRIMARY KEY AUTO_INCREMENT,
                               class_id    INT,
                               semester_id INT,
                               FOREIGN KEY (class_id) REFERENCES classes (id),
                               FOREIGN KEY (semester_id) REFERENCES semester (id)
);
DELETE FROM class_semester;


INSERT INTO class_semester (class_id, semester_id)
VALUES
    (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8),
    (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8),
    (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8),
    (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8),
    (6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6), (6, 7), (6, 8),
    (7, 1), (7, 2), (7, 3), (7, 4), (7, 5), (7, 6), (7, 7), (7, 8),
    (8, 1), (8, 2), (8, 3), (8, 4), (8, 5), (8, 6), (8, 7), (8, 8),
    (9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 6), (9, 7), (9, 8),
    (10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6), (10, 7), (10, 8);




-- don't use

CREATE TABLE user (
                      ID INT AUTO_INCREMENT PRIMARY KEY,
                      name VARCHAR(50),
                      vorname VARCHAR(50),
                      username VARCHAR(50)
);

-- ---------------------------------------------------------------------------------------------------------------------
-- 4.4 Füllen der Tabelle mit Initialdaten
-- ---------------------------------------------------------------------------------------------------------------------
INSERT INTO user (name, vorname, username) VALUES
                                               ('William', 'Alfred', 'willama'),
                                               ('Verstappen', 'Max', 'versm'),
                                               ('Hamilton', 'Lewis', 'haml'),
                                               ('Sainz', 'Carlos', 'sainzc'),
                                               ('Staheli', 'Hansruedi', 'stahelih'),
                                               ('Weiss', 'Annegret', 'annegr'),
                                               ('Hodler', 'Adelheid', 'hodleradel'),
                                               ('Keck', 'Ruedi', 'keckru'),
                                               ('Ufef', 'Ueba', 'osas'),
                                               ('Weil', 'Raul', 'weilr');

DROP TABLE user;


-- dont use bis hier



CREATE TABLE grades (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        student_id INT,
                        subject_id INT,
                        semester_id INT,
                        grade DECIMAL(2, 1) CHECK (grade >= 1.0 AND grade <= 6.0) NOT NULL,
                        FOREIGN KEY (student_id) REFERENCES students(id),
                        FOREIGN KEY (subject_id) REFERENCES subjects(id),
                        FOREIGN KEY (semester_id) REFERENCES semester(id)
);

INSERT INTO grades (student_id, subject_id, semester_id, grade)
VALUES
    (1, 1, 1, 4.5),
    (2, 1, 2, 3.0);

INSERT INTO grades (student_id, subject_id, semester_id, grade)
VALUES
    (10, 1, 1, 5.5),
    (1, 1, 1, 4.5),
    (3, 3, 2, 3.0),
    (4, 2, 1, 4.5),
    (5, 1, 2, 3.0),
    (6, 1, 1, 5.5),
    (7, 1, 2, 3.5),
    (8, 1, 1, 4.5),
    (9, 1, 2, 2.0);

-- dont use
SELECT
    s.firstname,
    s.lastname,
    sub.subject,
    sem.code,
    g.grade
FROM
    grades g
        JOIN
    students s ON g.student_id = s.id
        JOIN
    subjects sub ON g.subject_id = sub.subject
        JOIN
    semester sem ON g.semester_id = sem.code;






/*
 3 Pkt: Select unter Miteinbezug von je einer Basistabelle 1 Pkt.
2 Pkt: Anwendung von mindestens  joins (Verbindung zwischen den Tabellen mittels PK Und FK.
1 Pkt: Demonstration der auf- und absteigende Sortierung


 "1 Pkt: Kann einen Insert auf eine Basistabelle ausführen.
1 Pkt: Kann mit einem Insert mehrere Daten in die Basistabellen einfügen."
"1 Pkt: Kann Select auf Basidaten ausführen
3 Pkt: Kann Select auf Relationentabellen machen und die Attribute der Fremdtabelle anzeigen lassen."
"Wichtig ist der JOIN, da ansonsten die falsche Datenmenge herauskommt.
WHERE-Klausel"
"1 Pkt: Kann Update auf eine Basistabelle ausführen
1 Pkt: Kann beim Update geziehlt einen Datensatz aktualisieren"
"1 Pkt: Kann einen DELETE auf eine Basistabelle ausführen.
1 Pkt: Kann einen geziehlten DELETE (auf einen oder weniger Sätze beschränkt) ausführen.
1 Pkt: Kann beim Update geziehlt einen Datensatz aktualisieren"


 */












-- Beispiel: Select mit einer Basistabelle und aufsteigender Sortierung
SELECT *
FROM students
ORDER BY lastname DESC;

-- Beispiel: Insert in eine Basistabelle
INSERT INTO students (gender, firstname, lastname, birthday, address, zip, place, employer_name, employer_place, class_id)
VALUES ('Herr', 'Spider', 'Man', '01.01.2000', 'Brooklynstreet', 75000, 'New York', 'self', 'NY', 3);

select * from students;

DELETE FROM students
WHERE birthday = '01.01.2000';

-- Beispiel: Insert in mehrere Basistabellen

INSERT INTO subjects (id, subject)
VALUES ('0', 'Art class');

select * from subjects;

UPDATE subjects
SET subject = 'Computer science'
WHERE subject = 'Art class';

DELETE FROM subjects
WHERE id = 14;


select * from subjects;


-- 1. ERD-Tabellen



-- Beispiel: Select auf Basistabelle
SELECT *
FROM students
WHERE firstname = 'William';


-- Beispiel: Select auf Relationentabellen mit JOIN
SELECT grades.grade, semester.*
FROM grades
         JOIN semester ON grades.id = semester.id
ORDER BY grades.grade ASC;



-- Beispiel: Gezieltes Update auf Basistabelle
UPDATE classes
SET name = 'BM27 c'
WHERE name = 'BM21 c';

select * from classes;



