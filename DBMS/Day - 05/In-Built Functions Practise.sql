SHOW DATABASES;

use mysql;

CREATE TABLE Result(
    SNo INT NOT NULL AUTO_INCREMENT,
    SId INT,
    StudName VARCHAR(255),
    Sub VARCHAR(255),
    Marks INT,
    PRIMARY KEY(SNo)
);

SELECT
    *
FROM
    Result;

DELETE FROM
    Result
WHERE
    Sub = 'Computer'
    AND Marks = 93;

INSERT INTO
    Result(SId, StudName, Sub, Marks)
VALUES
('7287', 'Prabhjot', 'English', 83);

INSERT INTO
    Result(SId, StudName, Sub, Marks)
VALUES
('7287', 'Prabhjot', 'Computer', 03);

INSERT INTO
    Result(SId, StudName, Sub, Marks)
VALUES
('5625', 'Jigyasu', 'English', 93);

INSERT INTO
    Result(SId, StudName, Sub, Marks)
VALUES
('5625', 'Jigyasu', 'Computer', 93);

SELECT
    avg(marks)
FROM
    Result
WHERE
    Sub = 'Computer';

SELECT
    sum(marks)
FROM
    Result
WHERE
    Sub = 'Computer';

SELECT
    min(marks)
FROM
    Result
WHERE
    Sub = 'Computer';

SELECT
    length(StudName)
FROM
    Result;