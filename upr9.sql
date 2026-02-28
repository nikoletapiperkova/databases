
CREATE TABLE Product(
model CHAR(4),
maker CHAR(1),
type VARCHAR(7))

CREATE TABLE Printer(
code INT,
model CHAR(4),
color CHAR(1) DEFAULT 'n',
price DECIMAL(10, 2)
)

CREATE TABLE Classes(
class VARCHAR(50),
type CHAR(2) CHECK (type IN ('bb', 'bc'))
)

--INSERT INTO Product(model, maker, type)
--VALUES ('bosh', 'A', 'cool'),
--        ('mql', 'b', 'pool'),
--		('wolf', 'R', 'soul')

--INSERT INTO Printer(code, model)
--VALUES (2, 'sike')

--ALTER TABLE CLASSES
--ADD bore FLOAT

--ALTER TABLE Printer
--DROP COLUMN price


use master
DROP DATABASE test