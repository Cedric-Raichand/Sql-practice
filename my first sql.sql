 CREATE DATABASE club;
 USE club;
 CREATE TABLE actors (
  first_name VARCHAR(10),
  last_name VARCHAR(20),
  age INT,
  salary INT,
  year VARCHAR(20),
  point INT
  );
  INSERT INTO actors ( first_name, last_name, age, salary, year, point )
  VALUES ( "Cedric", "Raichand", 34, 346, "2020", 5 ),
  ( "Courage", "Hills", 43, 278, "2025", 2 );
  SELECT * FROM actors;
  INSERT INTO actors ( first_name, last_name, age, salary, year, point )
  VALUES ( "Jett", "Edinam", 67, 485, "2034", 7 ),
  ( "Phanuel", "Sesinam", 29, 491, "2014", 9 ),
  ( "Janelle", "Eyram", 65, 274, "2017", 4 ),
  ( "Junior", "Stephen", 43, 284, "2012", 6 );
  SELECT * FROM actors WHERE age > 40;
  SELECT * FROM actors WHERE last_name = "Eyram" ;
  SELECT * FROM actors WHERE first_name IN ("Phanuel", "Junior", "Courage" );
  UPDATE actors
  SET age = 105 WHERE last_name = "Edinam" LIMIT 1;
  
  ALTER TABLE actors 
  ALTER point SET DEFAULT 0;
  INSERT INTO actors ( first_name, last_name, age, salary, year )
  VALUES ( "Samuel", "King", 54, 345, "2034" ),
  ( "Dosted", "Bullet", 32, 78, "6743" ),
  ( "Seledah", "Oscar", 21, 53, "76432" ) ;
  
  
 
 