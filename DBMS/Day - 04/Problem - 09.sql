show databases;

use assignmentone;

CREATE TABLE MOV(
    SNo int,
    Title VARCHAR(50),
    MType VARCHAR(50),
    Rating VARCHAR(50),
    Stars VARCHAR(50),
    Qty int,
    Price float
);

describe mov;

INSERT INTO
    MOV
VALUES
(
        1,
        'Gone with the Wind',
        'Drama',
        'G',
        'Gable',
        4,
        39.95
    );

INSERT INTO
    MOV
VALUES
(
        2,
        'Friday the 13th',
        'Horror',
        'R',
        'Jason',
        2,
        69.95
    );

INSERT INTO
    MOV
VALUES
(3, 'Top Gun', 'Drama', 'PG', 'Cruise', 7, 49.95);

INSERT INTO
    MOV
VALUES
(4, 'Splash', 'Comedy', 'PG13', 'Hanks', 3, 29.95);

INSERT INTO
    MOV
VALUES
(
        5,
        'Independence Day',
        'Drama',
        'R',
        'Turner',
        3,
        19.95
    );

INSERT INTO
    MOV
VALUES
(
        6,
        'Risky Business',
        'Comedy',
        'R',
        'Cruise',
        2,
        44.95
    );

INSERT INTO
    MOV
VALUES
(7, 'Cocoon', 'Scifi', 'PG', 'Ameche', 2, 31.95);

INSERT INTO
    MOV
VALUES
(
        8,
        'Crocodile Dundee',
        'Comedy',
        'PG13',
        'Harris',
        2,
        69.95
    );

INSERT INTO
    MOV
VALUES
(9, '101 Dalmatians', 'Comedy', 'G', '', 3, 59.95);

INSERT INTO
    MOV
VALUES
(
        10,
        'Tootsie',
        'Comedy',
        'PG',
        'Hoffman',
        1,
        29.95
    );

SELECT
    *
FROM
    MOV;

-- i. Find the total value of the movie cassettes available in the library.
SELECT
    SUM(Price * Qty)
FROM
    MOV;

-- ii. Display a list of all movies with Price over 20 and sorted by Price
SELECT
    Title
FROM
    MOV
WHERE
    Price > 20
ORDER BY
    Price;

-- iii. Display all the movies sorted by Qty in decreasing order.
SELECT
    *
FROM
    MOV
ORDER BY
    Qty;

-- iv. Display a report listing a movie number, current value and replacement value for
--     each movie in the above table. Calculate the replacement value for all movies as QTY •
--     Price • 1.15
ALTER TABLE
    MOV
ADD
    ReplacementVal int;

UPDATE
    MOV
SET
    ReplacementVal = Qty * Price * 1.15;

SELECT
    SNo,
    Price,
    ReplacementVal
FROM
    MOV;

-- v. Count the number of movies where Rating is not "G".
SELECT
    count(SNo)
FROM
    MOV
WHERE
    NOT rating = 'G';

-- vi. Increase the price of Comedy type by 10.
UPDATE
    MOV
SET
    Price = Price + 10
WHERE
    MType = 'Comedy';