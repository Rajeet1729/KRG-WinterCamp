show databases;

use day_03;

CREATE TABLE Dress(
    DCODE int,
    Descrip VARCHAR(255),
    Price int,
    MCode VARCHAR(255),
    LaunchDate date
);

INSERT INTO
    Dress
VALUES
(1001, 'Formal Shirt', 1250, 'M001', '1998-01-12');

UPDATE
    Dress
SET
    DCODE = 10001
WHERE
    MCode = 'M001';

INSERT INTO
    Dress
VALUES
(10020, 'Frock', 750, 'M004', '2007-09-09');

INSERT INTO
    Dress
VALUES
(
        10012,
        'Onformal Shirt',
        1450,
        'M002',
        '2008-05-06'
    );

INSERT INTO
    Dress
VALUES
(10019, 'Evening Gown', 850, 'M003', '2008-05-06');

INSERT INTO
    Dress
VALUES
(10090, 'Tulip Skirt', 850, 'M002', '2007-03-31');

INSERT INTO
    Dress
VALUES
(
        10023,
        'Pencil Skirt',
        1250,
        'M003',
        '2008-12-19'
    );

INSERT INTO
    Dress
VALUES
(10089, 'Slacks', 850, 'M003', '2008-10-20');

INSERT INTO
    Dress
VALUES
(10007, 'Formal Pant', 1450, 'M001', '2008-03-09');

INSERT INTO
    Dress
VALUES
(
        10009,
        'Informal Pant',
        1400,
        'M002',
        '2008-10-20'
    );

INSERT INTO
    Dress
VALUES
(10024, 'Baby Top', 650, 'M003', '2007-04-07');

CREATE TABLE Material(MCode VARCHAR(255), Typ VARCHAR(255));

INSERT INTO
    Material
VALUES
('M001', 'Terelyne');

INSERT INTO
    Material
VALUES
('M002', 'Cotton');

INSERT INTO
    Material
VALUES
('M003', 'Silk');

INSERT INTO
    Material
VALUES
('M004', 'Polyster');

SELECT
    *
FROM
    Dress;

SELECT
    *
FROM
    Material;

-- 1. To Display DCODE and Description of each dress in ascending order of DCODE
SELECT
    DCODE,
    Descrip
FROM
    Dress
ORDER BY
    DCODE;

-- 2. To display the details of all the dresses which have launch date in between 05-Dec-07 and 20-Jun-08
SELECT
    *
FROM
    Dress
WHERE
    Launchdate BETWEEN '2007-12-05'
    AND '2008-06-20';

-- 3. To Dsiplay the Average price of all the dresses which  are made up of material with MCODE as M003
SELECT
    avg(Price)
FROM
    Dress
WHERE
    MCode = 'M003';

-- 4. To display material we highest and lowest price of dresses from DRESS table. (Display MCODE of each dress along with highest and lowest price)
SELECT
    -- 5. SELECT SUM(PRICE) FROM DRESS WHERE MCODE = ‘M001’;
SELECT
    SUM(PRICE)
FROM
    DRESS
WHERE
    MCODE = 'M001';

-- 6. SELECT DESCRIPTION, TYPE FROM DRESS, MATERIAL WHERE DRESS.MCODE=MATERIAL.MCODE AND DRESS.PRICE >= 1250;
SELECT
    Decrip,
    TYP
FROM
    DRESS,
    MATERIAL
WHERE
    DRESS.MCODE = MATERIAL.MCODE
    AND DRESS.PRICE >= 1250;

-- 7. SELECT MAX(MCODE) FROM MATERIAL;
SELECT
    MAX(MCODE)
FROM
    MATERIAL;

-- 8. SELECT COUNT(DISTINCT PRICE) FROM DRESS;
SELECT
    COUNT(DISTINCT PRICE)
FROM
    DRESS;