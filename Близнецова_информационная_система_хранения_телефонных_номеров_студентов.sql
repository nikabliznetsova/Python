DROP TABLE if EXISTS Students, Groupes, Institute;

CREATE TABLE Institute ( ID serial PRIMARY KEY, NAME_INS VARCHAR(20), ADRESS TEXT );

CREATE TABLE Groupes ( 
  ID serial PRIMARY KEY, 
  NAME_GROUP VARCHAR(20), 
  INSTITUTE_ID BIGINT, FOREIGN KEY ( INSTITUTE_ID ) REFERENCES institute ( ID ),
  COURSE BIGINT
);

CREATE TABLE Students ( 
  ID serial PRIMARY KEY, 
  SURNAME VARCHAR(30), 
  NAME_STUDENT VARCHAR(20), 
  SEX varchar(2),
  AGE INTEGER,
  GROUP_STUDENT BIGINT, FOREIGN KEY ( GROUP_STUDENT ) REFERENCES Groupes ( ID ),
  TELEPHONE TEXT
);

INSERT INTO Institute (NAME_INS, ADRESS)
	 VALUES ('ИЕНиМ', 'ул. Куйбышева, 48'),
     ('ИНМиТ', 'ул. Мира, 28'),
     ('ИРИТ-РтФ', 'ул. Мира, 32'),
     ('ИСА', 'ул. Мира, 17'),
     ('ИТОО', 'ул. Мира, 19'),
     ('ИФК', 'ул. Коминтерна, 14'),
     ('ИнФО', 'ул. С. Ковалевской, 5'),
     ('ИнЭУ', 'ул. Мира, 19'),
     ('СУНЦ', 'ул. Д.Зверева, 30'),
     ('УГИ', 'ул. Ленина, 51'),
     ('УралЭнИн', 'ул. С. Ковалевской, 5'),
     ('ФТИ', 'ул. Мира, 21'),
     ('ХТИ', 'ул. Мира, 28');
INSERT INTO Groupes (NAME_GROUP, INSTITUTE_ID, COURSE)
	 VALUES ('160008', 12, 1),
     ('260007', 12, 2),
     ('260101', 1, 2),
     ('160301', 1, 1 ),
     ('460201', 2, 4 ),
     ('260018', 2, 2 ),
     ('360016', 3, 3 ),
     ('160010', 3, 1 ),
     ('160008', 7, 1 ),
     ('260007', 4, 2 ),
     ('260101', 4, 2 ),
     ('160301', 5, 1 ),
     ('460201', 5, 4 ),
     ('260018', 6, 2 ),
     ('360016', 6, 3 ),
     ('160010', 7, 1);
     
INSERT INTO Students (SURNAME, NAME_STUDENT, SEX, AGE, GROUP_STUDENT, TELEPHONE)
	 VALUES ('Лапаева', 'Валентина', 'Ж', 18, 1, '312-05-08'),
     ('Осколкова', 'Оксана', 'Ж', 18, 1, '365-18-11' ),
     ('Коковина', 'Юлия', 'Ж', 17, 1, '356-18-28' ),
     ('Картавых', 'Татьяна', 'Ж', 19, 1, '356-18-33' ),
     ('Демин', 'Алексей', 'М', 19, 2, '256-1-30' ),
     ('Ускова', 'Татьяна', 'Ж', 20, 2, '356-18-32' ),
     ('Дедова', 'Наталья', 'Ж', 19, 2, '312-05-01' ),
     ('Королькова', 'Елена', 'Ж', 21, 3, '356-18-32' ),
     ('Екимова', 'Надежда', 'Ж', 22, 3, '312-05-01' ),
     ('Третьяков', 'Алексей', 'М', 19, 4, '312-05-48' ),
     ('Панова', 'Елена', 'Ж', 22, 4, '312-47-92' ),
     ('Полынкина', 'Елена', 'Ж', 18, 5, '256-47-28' ),
     ('Глотова', 'Ольга', 'Ж', 21, 5, '478-26-25' ),
     ('Моджиевская', 'Ольга', 'Ж', 20, 6, '312-05-47' ),
     ('Шеянов', 'Иван', 'М', 19, 6, '312-05-02' ),
     ('Кашин', 'Сергей', 'М', 19, 7, '315-48-26' ),
     ('Мошкин', 'Илья', 'М', 18, 7, '312-50-89' ),
     ('Викулина', 'Ирина', 'Ж', 19, 8, '312-85-99' ),
     ('Строганов', 'Александр', 'М', 23, 8, '312-22-31' ),
     ('Амирова', 'Валентина', 'Ж', 18, 9, '312-45-08' ),
     ('Мельникова', 'Оксана', 'Ж', 20, 9, '365-18-41' ),
     ('Латкина', 'Юлия', 'Ж', 21, 10, '356-18-28' ),
     ('Ударцева', 'Татьяна', 'Ж', 18, 10, '376-18-33' ),
     ('Ахсадзиев', 'Алексей', 'М', 19, 11, '256-15-30' ),
     ('Салтыкова', 'Татьяна', 'Ж', 18, 12, '356-67-32' ),
     ('Гербер', 'Наталья', 'Ж', 18, 13, '312-44-01' ),
     ('Бусыгина', 'Елена', 'Ж', 21, 14, '356-18-73'),
     ('Войсковая', 'Надежда', 'Ж', 18, 15, '314-05-01'),
     ('Дорожкин', 'Алексей', 'М', 19, 16, '312-24-48'),
     ('Уварова', 'Елена', 'Ж', 18, 1, '312-37-92'),
     ('Мерешко', 'Елена', 'Ж', 18, 2, '256-31-28'),
     ('Глоткова', 'Ольга', 'Ж', 21, 3, '478-62-25'),
     ('Поразова', 'Ольга', 'Ж', 20, 4, '312-51-47'),
     ('Мантуров', 'Иван', 'М', 19, 5, '312-87-02'),
     ('Чадаев', 'Сергей', 'М', 20, 6, '315-97-26'),
     ('Барбашев', 'Илья', 'М', 21, 7, '312-41-89'),
     ('Командина', 'Ирина', 'Ж', 18, 8, '312-54-99'),
     ('Вешкурцев', 'Александр', 'М', 21, 9, '312-44-31');
 
DROP ROUTINE if EXISTS insert_student(VARCHAR(30),VARCHAR(20),VARCHAR(2), INTEGER, INTEGER,TEXT);

CREATE or REPLACE PROCEDURE insert_student (sur VARCHAR(30),nam VARCHAR(20), sx VARCHAR(2), ag INTEGER, grp INTEGER, tel TEXT)
language plpgsql
as $$
BEGIN
    if not exists (SELECT surname, name_student FROM students WHERE surname = sur and name_student = nam) then
		insert into Students (SURNAME, NAME_STUDENT, SEX, AGE, GROUP_STUDENT, TELEPHONE) VALUES ( sur, nam, sx, ag, 1, '46469-88');
	end if;
end;
$$;

CREATE or REPLACE PROCEDURE delete_student (sur VARCHAR(30),nam VARCHAR(20))
language plpgsql
as $$
BEGIN
    if exists (SELECT surname, name_student FROM students WHERE surname = sur and name_student = nam) then
		--DELETE into Students (SURNAME, NAME_STUDENT, GROUP_STUDENT, TELEPHONE) VALUES ( sur, nam, 1, '46469-88');
        DELETE FROM students
  		WHERE id IN (SELECT id FROM students WHERE surname = sur and name_student = nam);
	end if;
end;
$$;

CREATE or REPLACE PROCEDURE change_number (sur VARCHAR(30), nam VARCHAR(20), tel TEXT)
language plpgsql
as $$
BEGIN
	UPDATE students
	SET telephone = tel
	WHERE surname = sur and name_student = nam;
end;
$$;
CALL delete_student('Близнецова', 'Вероника');
CALL insert_student('Близнецова', 'Вероника', 'Ж', 22, 1, '123-45-67');

CALL insert_student('Игнатьев', 'Михаил','М', 22 , 7, '000-00-00');

CALL delete_student('Игнатьев', 'Михаил');

call change_number ('Близнецова', 'Вероника', '333-33-33' );

SELECT * FROM students order by id DESC;DROP TABLE if EXISTS Students, Groupes, Institute;

CREATE TABLE Institute ( ID serial PRIMARY KEY, NAME_INS VARCHAR(20), ADRESS TEXT );

CREATE TABLE Groupes ( 
  ID serial PRIMARY KEY, 
  NAME_GROUP VARCHAR(20), 
  INSTITUTE_ID INTEGER, FOREIGN KEY ( INSTITUTE_ID ) REFERENCES institute ( ID ),
  COURSE INTEGER
);

CREATE TABLE Students ( 
  ID serial PRIMARY KEY, 
  SURNAME VARCHAR(30), 
  NAME_STUDENT VARCHAR(20), 
  SEX varchar(2),
  AGE INTEGER,
  GROUP_STUDENT BIGINT, FOREIGN KEY ( GROUP_STUDENT ) REFERENCES Groupes ( ID ),
  TELEPHONE TEXT
);

INSERT INTO Institute (NAME_INS, ADRESS)
	 VALUES ('ИЕНиМ', 'ул. Куйбышева, 48'),
     ('ИНМиТ', 'ул. Мира, 28'),
     ('ИРИТ-РтФ', 'ул. Мира, 32'),
     ('ИСА', 'ул. Мира, 17'),
     ('ИТОО', 'ул. Мира, 19'),
     ('ИФК', 'ул. Коминтерна, 14'),
     ('ИнФО', 'ул. С. Ковалевской, 5'),
     ('ИнЭУ', 'ул. Мира, 19'),
     ('СУНЦ', 'ул. Д.Зверева, 30'),
     ('УГИ', 'ул. Ленина, 51'),
     ('УралЭнИн', 'ул. С. Ковалевской, 5'),
     ('ФТИ', 'ул. Мира, 21'),
     ('ХТИ', 'ул. Мира, 28');
INSERT INTO Groupes (NAME_GROUP, INSTITUTE_ID, COURSE)
	 VALUES ('160008', 12, 1),
     ('260007', 12, 2),
     ('260101', 1, 2),
     ('160301', 1, 1 ),
     ('460201', 2, 4 ),
     ('260018', 2, 2 ),
     ('360016', 3, 3 ),
     ('160010', 3, 1 ),
     ('160008', 7, 1 ),
     ('260007', 4, 2 ),
     ('260101', 4, 2 ),
     ('160301', 5, 1 ),
     ('460201', 5, 4 ),
     ('260018', 6, 2 ),
     ('360016', 6, 3 ),
     ('160010', 7, 1);
     
INSERT INTO Students (SURNAME, NAME_STUDENT, SEX, AGE, GROUP_STUDENT, TELEPHONE)
	 VALUES ('Лапаева', 'Валентина', 'Ж', 18, 1, '312-05-08'),
     ('Осколкова', 'Оксана', 'Ж', 18, 1, '365-18-11' ),
     ('Коковина', 'Юлия', 'Ж', 17, 1, '356-18-28' ),
     ('Картавых', 'Татьяна', 'Ж', 19, 1, '356-18-33' ),
     ('Демин', 'Алексей', 'М', 19, 2, '256-1-30' ),
     ('Ускова', 'Татьяна', 'Ж', 20, 2, '356-18-32' ),
     ('Дедова', 'Наталья', 'Ж', 19, 2, '312-05-01' ),
     ('Королькова', 'Елена', 'Ж', 21, 3, '356-18-32' ),
     ('Екимова', 'Надежда', 'Ж', 22, 3, '312-05-01' ),
     ('Третьяков', 'Алексей', 'М', 19, 4, '312-05-48' ),
     ('Панова', 'Елена', 'Ж', 22, 4, '312-47-92' ),
     ('Полынкина', 'Елена', 'Ж', 18, 5, '256-47-28' ),
     ('Глотова', 'Ольга', 'Ж', 21, 5, '478-26-25' ),
     ('Моджиевская', 'Ольга', 'Ж', 20, 6, '312-05-47' ),
     ('Шеянов', 'Иван', 'М', 19, 6, '312-05-02' ),
     ('Кашин', 'Сергей', 'М', 19, 7, '315-48-26' ),
     ('Мошкин', 'Илья', 'М', 18, 7, '312-50-89' ),
     ('Викулина', 'Ирина', 'Ж', 19, 8, '312-85-99' ),
     ('Строганов', 'Александр', 'М', 23, 8, '312-22-31' ),
     ('Амирова', 'Валентина', 'Ж', 18, 9, '312-45-08' ),
     ('Мельникова', 'Оксана', 'Ж', 20, 9, '365-18-41' ),
     ('Латкина', 'Юлия', 'Ж', 21, 10, '356-18-28' ),
     ('Ударцева', 'Татьяна', 'Ж', 18, 10, '376-18-33' ),
     ('Ахсадзиев', 'Алексей', 'М', 19, 11, '256-15-30' ),
     ('Салтыкова', 'Татьяна', 'Ж', 18, 12, '356-67-32' ),
     ('Гербер', 'Наталья', 'Ж', 18, 13, '312-44-01' ),
     ('Бусыгина', 'Елена', 'Ж', 21, 14, '356-18-73'),
     ('Войсковая', 'Надежда', 'Ж', 18, 15, '314-05-01'),
     ('Дорожкин', 'Алексей', 'М', 19, 16, '312-24-48'),
     ('Уварова', 'Елена', 'Ж', 18, 1, '312-37-92'),
     ('Мерешко', 'Елена', 'Ж', 18, 2, '256-31-28'),
     ('Глоткова', 'Ольга', 'Ж', 21, 3, '478-62-25'),
     ('Поразова', 'Ольга', 'Ж', 20, 4, '312-51-47'),
     ('Мантуров', 'Иван', 'М', 19, 5, '312-87-02'),
     ('Чадаев', 'Сергей', 'М', 20, 6, '315-97-26'),
     ('Барбашев', 'Илья', 'М', 21, 7, '312-41-89'),
     ('Командина', 'Ирина', 'Ж', 18, 8, '312-54-99'),
     ('Вешкурцев', 'Александр', 'М', 21, 9, '312-44-31');
 
DROP ROUTINE if EXISTS insert_student(VARCHAR(30),VARCHAR(20),VARCHAR(2), INTEGER, INTEGER,TEXT);

CREATE or REPLACE PROCEDURE insert_student (sur VARCHAR(30),nam VARCHAR(20), sx VARCHAR(2), ag INTEGER, grp INTEGER, tel TEXT)
language plpgsql
as $$
BEGIN
    if not exists (SELECT surname, name_student FROM students WHERE surname = sur and name_student = nam) then
		insert into Students (SURNAME, NAME_STUDENT, SEX, AGE, GROUP_STUDENT, TELEPHONE) VALUES ( sur, nam, sx, ag, grp, tel);
	end if;
end;
$$;

CREATE or REPLACE PROCEDURE delete_student (sur VARCHAR(30),nam VARCHAR(20))
language plpgsql
as $$
BEGIN
    if exists (SELECT surname, name_student FROM students WHERE surname = sur and name_student = nam) then
        DELETE FROM students
  		WHERE id IN (SELECT id FROM students WHERE surname = sur and name_student = nam);
	end if;
end;
$$;

CREATE or REPLACE PROCEDURE delete_group (numb_group text)
language plpgsql
as $$
BEGIN
    if exists (SELECT NAME_GROUP FROM groupes WHERE NAME_GROUP = numb_group) then
        DELETE FROM students
  		WHERE GROUP_STUDENT IN (SELECT id FROM groupes WHERE NAME_GROUP = numb_group);
        DELETE FROM groupes
  		WHERE NAME_GROUP IN (SELECT NAME_GROUP FROM groupes WHERE NAME_GROUP = numb_group);
	end if;
end;
$$;

CREATE or REPLACE PROCEDURE create_group (numb_group VARCHAR(20), inst_id INTEGER, curs INTEGER)
language plpgsql
as $$
BEGIN
    if not exists (SELECT * FROM groupes WHERE NAME_GROUP = numb_group and COURSE = curs) then
		insert into groupes (NAME_GROUP, INSTITUTE_ID, COURSE) VALUES ( numb_group, inst_id, curs);
	end if;
end;
$$;

CREATE or REPLACE PROCEDURE change_number (sur VARCHAR(30), nam VARCHAR(20), tel TEXT)
language plpgsql
as $$
BEGIN
	UPDATE students
	SET telephone = tel
	WHERE surname = sur and name_student = nam;
end;
$$;

CREATE or REPLACE FUNCTION find_number 
(sur VARCHAR(30), 
nam VARCHAR(20)) returns TEXT
as $$
BEGIN
	--return 'dff'
    IF NOT EXISTS (SELECT telephone FROM students WHERE id IN (SELECT id FROM students WHERE surname = sur and name_student = nam)) THEN
    	RETURN 'Not Found';
    ELSE
    	RETURN (SELECT telephone FROM students WHERE id IN (SELECT id FROM students WHERE surname = sur and name_student = nam));
    end IF;
    RETURN NULL;
end;
$$ language plpgsql;

CALL delete_student('Близнецова', 'Вероника');
CALL insert_student('Близнецова', 'Вероника', 'Ж', 22, 1, '123-45-67');

CALL insert_student('Игнатьев', 'Михаил','М', 22 , 7, '000-00-00');

CALL delete_student('Игнатьев', 'Михаил');

call change_number ('Близнецова', 'Вероника', '333-33-33' );

CALL delete_group('260007');

SELECT find_number('Близнецова', 'Вероника');

call create_group('190006', 1, 1);

SELECT * FROM groupes;

SELECT * FROM students order by id DESC;