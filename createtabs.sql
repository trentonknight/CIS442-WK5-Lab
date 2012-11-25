/*
----------------------------------------------------------------------
--            STUDENT Table
----------------------------------------------------------------------
*/
DROP TABLE student;

CREATE TABLE student
( 
  stdid            INT  primary key,
  fname            VARCHAR2(50) NOT NULL,
  lname            VARCHAR2(50) NOT NULL,
  mi               VARCHAR2(1),
  majorid          VARCHAR2(15),
  address          VARCHAR2(50),
  city             VARCHAR2(50),
  state            VARCHAR2(2),
  zip              VARCHAR2(9),
  phone            VARCHAR2(15),
  advid            VARCHAR2(15)
); 

