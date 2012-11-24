/*
----------------------------------------------------------------------
--            DEPT Table
----------------------------------------------------------------------
*/
DROP TABLE dept;

CREATE TABLE dept
(
  deptid           VARCHAR2(15)	primary key,
  dname            VARCHAR2(50),
  address          VARCHAR2(50),
  city             VARCHAR2(50),
  state            VARCHAR2(2),
  zip              VARCHAR2(9),
  phone            VARCHAR2(15)
); 

/*
----------------------------------------------------------------------
--            ADVISOR Table
----------------------------------------------------------------------
*/
DROP TABLE advisor;

CREATE TABLE advisor
(
  advid            VARCHAR2(15)  primary key,
  fname            VARCHAR2(50),
  lname            VARCHAR2(50),
  mi               VARCHAR2(1),
  deptid           VARCHAR2(15),
  address          VARCHAR2(50),
  city             VARCHAR2(50),
  state            VARCHAR2(2),
  zip              VARCHAR2(9),
  phone            VARCHAR2(15),
  CONSTRAINT fk_deptid1 FOREIGN KEY (deptid) REFERENCES dept(deptid)
); 

/*
----------------------------------------------------------------------
--            MAJOR Table
----------------------------------------------------------------------
*/
DROP TABLE major;

CREATE TABLE major
(
  majorid          VARCHAR2(15) primary key,
  deptid           VARCHAR2(15)  NOT NULL,
  description      VARCHAR2(50) NOT NULL,
  CONSTRAINT fk_deptid2 FOREIGN KEY (deptid) REFERENCES dept(deptid) 
); 

/*
----------------------------------------------------------------------
--            STUDENT Table
----------------------------------------------------------------------
*/
DROP TABLE student;

CREATE TABLE student
( 
  stdid            VARCHAR2(15)         primary key,
  fname            VARCHAR2(50) NOT NULL,
  lname            VARCHAR2(50) NOT NULL,
  mi               VARCHAR2(1),
  majorid          VARCHAR2(15),
  address          VARCHAR2(50),
  city             VARCHAR2(50),
  state            VARCHAR2(2),
  zip              VARCHAR2(9),
  phone            VARCHAR2(15),
  advid            VARCHAR2(15),
CONSTRAINT fk_advid FOREIGN KEY (advid) REFERENCES advisor(advid),
CONSTRAINT fk_majorid FOREIGN KEY (majorid) REFERENCES major(majorid)
); 

/*
----------------------------------------------------------------------
--            FACULTY Table
----------------------------------------------------------------------
*/
DROP TABLE faculty;

CREATE TABLE faculty
(
  facid            VARCHAR2(15)        primary key,
  fname            VARCHAR2(50) NOT NULL,
  lname            VARCHAR2(50) NOT NULL,
  mi               VARCHAR2(1),
  deptid           VARCHAR2(15),
  address          VARCHAR2(50),
  city             VARCHAR2(50),
  state            VARCHAR2(2),
  zip              VARCHAR2(9),
  phone            VARCHAR2(15),
CONSTRAINT fk_deptid3 FOREIGN KEY (deptid) REFERENCES dept(deptid)
);  

/*
----------------------------------------------------------------------
--            COURSE Table
----------------------------------------------------------------------
*/
DROP TABLE course;

CREATE TABLE course
(
  courseid         VARCHAR2(15)  primary key,
  description      VARCHAR2(50) NOT NULL,
  deptid           VARCHAR2(15)  NOT NULL,
  credhrs          NUMBER,
CONSTRAINT fk_deptid4 FOREIGN KEY (deptid) REFERENCES dept(deptid)
); 

/*
----------------------------------------------------------------------
--            PREREQUISITES Table
----------------------------------------------------------------------
*/
DROP TABLE prereqs; 

CREATE TABLE prereqs
(
  id               NUMBER primary key,
  courseid         VARCHAR2(15) NOT NULL,
  CONSTRAINT fk_courseid FOREIGN KEY (courseid) REFERENCES course(courseid)
); 

/*
----------------------------------------------------------------------
--            BOOK Table
----------------------------------------------------------------------
*/
DROP TABLE book; 

CREATE TABLE book
(
  isbn             VARCHAR2(15) primary key,
  publisher        VARCHAR2(25) NOT NULL,
  description      VARCHAR2(50) NOT NULL,
  author           VARCHAR2(25) NOT NULL,
  year             NUMBER
); 

/*
----------------------------------------------------------------------
--            TEXTBOOK Table
----------------------------------------------------------------------
*/
DROP TABLE textbook; 

CREATE TABLE textbook
(
  courseid         VARCHAR2(15)  NOT NULL,
  description      VARCHAR2(50) NOT NULL,
  deptid           VARCHAR2(15) NOT NULL,
  isbn             VARCHAR2(15) primary key,
  CONSTRAINT fk_deptid5 FOREIGN KEY (deptid) REFERENCES dept(deptid),
  CONSTRAINT fk_courseid1 FOREIGN KEY (courseid) REFERENCES course(courseid),
  CONSTRAINT fk_isbn FOREIGN KEY (isbn) REFERENCES book(isbn)
); 

/*
----------------------------------------------------------------------
--            ROOM Table
----------------------------------------------------------------------
*/
DROP TABLE room; 

CREATE TABLE room
(
  roomid           VARCHAR2(15)  	 primary key,
  bldg             VARCHAR2(10) NOT NULL,
  capacity         NUMBER,
  eqpt             VARCHAR2(20)
); 

/*
----------------------------------------------------------------------
--            SCHEDULE Table
----------------------------------------------------------------------
*/
DROP TABLE schedule; 

CREATE TABLE schedule
(
  courseid         VARCHAR2(15) NOT NULL,
  section          VARCHAR2(15) NOT NULL,
  term             VARCHAR2(10) NOT NULL,
  facid            VARCHAR2(15),
  roomid           VARCHAR2(15),
  CONSTRAINT fk_facid FOREIGN KEY (facid) REFERENCES faculty(facid),
  CONSTRAINT fk_roomid FOREIGN KEY (roomid) REFERENCES room(roomid),
  CONSTRAINT fk_courseid2 FOREIGN KEY (courseid) REFERENCES course(courseid)
); 

/*
----------------------------------------------------------------------
--            ENROLLMENT Table
----------------------------------------------------------------------
*/
DROP TABLE enrollment; 

CREATE TABLE enrollment
(
  stdid            VARCHAR2(15)        NOT NULL,
  courseid         VARCHAR2(15)  NOT NULL,
  section          NUMBER,
  term             VARCHAR2(10) NOT NULL,
  CONSTRAINT fk_stdid FOREIGN KEY (stdid) REFERENCES student(stdid),
  CONSTRAINT fk_courseid3 FOREIGN KEY (courseid) REFERENCES course(courseid)
); 
