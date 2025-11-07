CREATE DATABASE church;
USE church;
CREATE TABLE members (
  first_name VARCHAR(40),
  last_name VARCHAR(40),
   age INT,
   salary INT
   );
   
INSERT INTO members ( first_name, last_name, age, salary )
VALUES ( "Cedric", "Raichand", 54, 86 ),
( "Courage", "Hills", 47, 43 ),
( "Jett", "Edinam", 63, 84 ),
( "Jonas", "Bullion", 48, 73 ),
( "Cubarsi", "David", 74, 23 ),
( "Khojoe", "Debe", 53, 95 );
INSERT INTO members ( first_name, last_name, age, salary )
VALUES ( "Janelle", "Eyram", 73, 84 );
UPDATE members
SET age = 100 WHERE first_name = "Cedric"  LIMIT 1;

SELECT first_name, last_name FROM members;
SELECT * FROM members;

CREATE TABLE test (
my_date DATE,
my_time TIME,
my_datetime DATETIME
);
INSERT INTO test 
VALUES ( CURRENT_DATE(), CURRENT_TIME(), NOW());
SELECT * FROM test;

SELECT * FROM members WHERE first_name IN ("Cedric", "Courage", "Jett" );
SELECT * FROM members WHERE last_name = "David";
SELECT * FROM members WHERE age > 50 ;
ALTER TABLE members
ADD phone_number VARCHAR(67);

SET SQL_SAFE_UPDATES = 0;
UPDATE members 

SET phone_number = CASE first_name 
WHEN "Cedric" THEN "024 4567 238"
WHEN "Courage" THEN "059 8327 482"
WHEN "Jett" THEN "025 2790 691"
WHEN "Jonas" THEN "054 5732 238"
WHEN "Cubarsi" THEN "026 1672 485"
WHEN "Khojoe" THEN "026 1678 3672"
WHEN "Janelle" THEN "024 5313 732"
END
WHERE first_name IN ("Cedric", "Courage", "Jett", "Jonas", "Cubarsi", "Khojoe", "Janelle" );




   