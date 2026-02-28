--CREATE TABLE test1(
--id INT identity PRIMARY KEY,
--name VARCHAR(50))

--insert into test1(name) values('First');
--insert into test1(name) values('Second');
--insert into test1(name) values('Third');

--CREATE TABLE test2(
--id INT identity PRIMARY KEY,
--name VARCHAR(50))

--insert into test2(name) values('First');
--insert into test2(name) values('Second');
--insert into test2(name) values('Third');

--SELECT * FROM test2

--ALTER TABLE MOVIE
--ADD CONSTRAINT UNQ_LEN UNIQUE(length)

--begin transaction 


--ALTER TABLE MOVIE
--ADD CONSTRAINT UNQ_LEN UNIQUE(length) 

--ALTER TABLE MOVIE
--ADD CONSTRAINT UNQ_STD_LEN UNIQUE (studioname, length)

--ALTER TABLE MOVIE 
--DROP CONSTRAINT UNQ_STD_LEN



--rollback transaction

CREATE TABLE STUDENT(
fn INTEGER CHECK ( fn >= 0 AND fn <= 99999) CONSTRAINT PK_ST PRIMARY KEY NOT NULL,
name VARCHAR(100) NOT NULL,
egn CHAR(10) UNIQUE NOT NULL, 
gmail VARCHAR(100) UNIQUE NOT NULL CHECK (gmail LIKE '%@%.%'),
birthday DATE NOT NULL,
acceptance DATE  NOT NULL, 
CHECK( YEAR(acceptance) <= (18 + YEAR(birthday)))
)


CREATE TABLE COURSE(
number INTEGER, 
name VARCHAR(100),
CONSTRAINT UNQ_NAME_NUM UNIQUE (name, number),
CONSTRAINT PK_COURSE PRIMARY KEY (name, number),
)


CREATE TABLE STUDENT_COURSE(
student_fn INTEGER,
course_number INTEGER,
course_name VARCHAR(100),
CONSTRAINT FK_STUDENT FOREIGN KEY (student_fn)
REFERENCES STUDENT(fn),
CONSTRAINT FK_COURSE FOREIGN KEY (course_name, course_number)
REFERENCES COURSE(name, number) ON DELETE CASCADE,
CONSTRAINT PK_ENROLLMENT PRIMARY KEY (student_fn, course_number, course_name))

