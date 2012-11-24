/*
-- LoadTables.sql
-- Populate PostgreSQL tables for the CS442 database 
----------------------------------------------------------------------
--            DEPARTMENT Table
----------------------------------------------------------------------
*/
DELETE FROM dept;

INSERT INTO dept( deptid, dname )
  VALUES ( 'BUS', 'Business' );

INSERT INTO dept( deptid, dname )
  VALUES ( 'COM', 'Communications' );

INSERT INTO dept( deptid, dname )
  VALUES ( 'CS', 'Computer Science' );

INSERT INTO dept( deptid, dname )
  VALUES ( 'ENG', 'English' );

INSERT INTO dept( deptid, dname )
  VALUES ( 'HP', 'Health Professions' );

INSERT INTO dept( deptid, dname )
  VALUES ( 'LA', 'Liberal Arts' );

INSERT INTO dept( deptid, dname )
  VALUES ( 'SCI', 'Science' );

/*
----------------------------------------------------------------------
--            ADVISOR Table
----------------------------------------------------------------------
*/
DELETE FROM advisor;

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (100, 'Susan', 'Day', 'D', 'CS', '5678 Bramble Lane', 
           'Colorado Springs', 'CO', '80919', '719 575-1001' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (101, 'James', 'Litz', ' ', 'COM', '2205 Joiner Road',
           'Colorado Springs', 'CO', '80920', '719 330-1072' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (102, 'Karen', 'Murphy', 'R', 'BUS', '468 Centennial Blvd, Apt. A',
           'Colorado Springs', 'CO', '80919', '719 358-5422' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (103, 'John', 'Long', 'F', 'HP', '12 Costilla Street',
           'Colorado Springs', 'CO', '80907', '719 651-1234' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (104, 'Bruce', 'Kane', 'W', 'ENG', '700 Garden of the Gods Road',
           'Colorado Springs', 'CO', '80920', '719 531-4472' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (105, 'Eileen', 'Lange', 'R', 'BUS', '4523 North Nevada',
           'Colorado Springs', 'CO', '80920', '719 570-6543' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (106, 'Toni', 'Miller', 'M', 'CS', '1754 Fountain Blvd.',
           'Colorado Springs', 'CO', '80920', '719 395-5431' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (107, 'Robert', 'Kennedy', ' ', 'HP', '6432 Adobe Drive',
           'Colorado Springs', 'CO', '80903', '719 264-7074' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (108, 'Carmen', 'Maly', 'W', 'COM', '1900 Garden of the Gods Road',
           'Colorado Springs', 'CO', '80920', '719 531-4472' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (109, 'Sally', 'Queen', 'R', 'LA', '166456 East Palmer Park',
           'Manitou Springs', 'CO', '80190', '719 345-9007' );

INSERT INTO advisor (advid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (110, 'Jeff', 'McClure', 'Q', 'ENG', '4489 VanReen St.',
           'Colorado Springs', 'CO', '80902', '719 591-1944' );

/*
----------------------------------------------------------------------
--            MAJOR Table
----------------------------------------------------------------------
*/
DELETE FROM major;

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'BUS', 'BUS', 'Business Administration' );
 
INSERT INTO major ( majorid, deptid, description )
  VALUES ( 'COM', 'COM', 'Communications' );

INSERT INTO major ( majorid, deptid, description )
  VALUES ( 'CIS', 'CS', 'Computer Information Systems' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'CS', 'CS', 'Computer Science' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'CN', 'CS', 'Computer Networking' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'ECO', 'BUS', 'Business Administration' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'ENG', 'ENG', 'English' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'HIS', 'LA', 'History' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'HR', 'BUS', 'Human Resources' );
 
INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'MGT', 'BUS', 'Management' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'MKT', 'BUS', 'Marketing' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'MAT', 'SCI', 'Mathematics' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'MUS', 'LA', 'Liberal Arts' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'NUR', 'HP', 'Nursing' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'UND', 'LA', 'Undeclared' );

INSERT INTO major ( majorid, deptid, description )
    VALUES ( 'PS', 'LA', 'Political Science' );

/*
----------------------------------------------------------------------
--            STUDENT Table
----------------------------------------------------------------------
*/
DELETE FROM student;

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (1, 'Samuel', 'Smith', 'D', 'CS', '1234 Main Street', 
           'Monument', 'CO', '80902', '719 260-1234', 100);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (2, 'Marylin', 'Manson', 'M', 'CIS', '246 Tejon Street', 
           'Colorado Springs', 'CO', '80909', '719 570-2468', 102);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (3, 'Joanne', 'Wilson', 'D', 'HIS', '579 N. Nevada', 
           'Colorado Springs', 'CO', '80919', '719 575-1001', 107);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (4, 'Manny', 'Starr', ' ', 'BUS', '529 Flying W Ranch Road',
           'Colorado Springs', 'CO', '80920', '719 330-1072', 102);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (5, 'Pat', 'Pullman', 'R', 'ECO', '468 Centennial Blvd, Apt. E',
           'Colorado Springs', 'CO', '80919', '719 358-5422', 103);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (6, 'Tim', 'Brown', 'F', 'ENG', '12 Bijou Street',
           'Colorado Springs', 'CO', '80907', '719 651-1234' , 107);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (7, 'Barbara', 'Runza', 'W', 'ECO', '722 Garden of the Gods Road',
           'Colorado Springs', 'CO', '80920', '719 531-4472', 100 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (8, 'Dave', 'Elgass', 'R', 'MUS', '222 North Nevada',
           'Colorado Springs', 'CO', '80920', '719 570-6543', 109);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (9, 'Maria', 'Roberts', 'M', 'NUR', '540-A Fillmore',
           'Colorado Springs', 'CO', '80920', '719 395-5431', 107);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (10, 'Dean', 'Calhoun', ' ', 'MAT', '6712 Blue Bird Drive',
           'Colorado Springs', 'CO', '80903', '719 264-7074', 102 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (11, 'Barbara', 'Runza', 'W', 'ECO', '722 Garden of the Gods Road',
           'Colorado Springs', 'CO', '80920', '719 531-4472', 110 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (12, 'Steve', 'Knight', 'R', 'BUS', '456 East Pikes Peak',
           'Manitou Springs', 'CO', '80190', '719 345-9007', 100 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (13, 'Martha', 'Lowell', 'Q', 'UND', '3458 Fountain Blvd.',
           'Aurora', 'CO', '80220', '303 576-6891', 105);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (14, 'Debra', 'Calhoun', ' ', 'MAT', '6712 Broken Wing Street',
           'Denver', 'CO', '80235', '303 388-1290', 104);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (15, 'Andrew', 'Baxter', 'D', 'CS', '1234 Main Street', 
           'Monument', 'CO', '80902', '719 234-1234', 109 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (16, 'Mary', 'Mitchell', 'M', 'CIS', '246 Tejon Street', 
           'Denver', 'CO', '80229', '303 450-2668', 106);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (17, 'Joe', 'Shahan', 'D', 'PS', '1625Woodmor Dr.', 
           'Monument', 'CO', '80931', '719 354-1621', 100);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (18, 'Jeff', 'Schott', 'R', 'ENG', '1234 Main Dr.', 
           'Englewood', 'CO', '80931', '303 354-1621', 109);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (19, 'Jim', 'Fry', ' ', 'BUS', '529 E. Boulder Street',
           'Colorado Springs', 'CO', '80920', '719 330-4245', 107 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (20, 'Patrick', 'Zbylski', 'R', 'ECO', '468 Bedford Lane',
           'Colorado Springs', 'CO', '80919', '719 358-5334', 102 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (21, 'Thom', 'Black', 'F', 'ENG', '123 E Ramona',
           'Colorado Springs', 'CO', '80907', '719 651-2345', 101 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (22, 'Tanya', 'Dunham', 'W', 'ECO', '2301 Ausint Bluffs Pkwy',
           'Monument', 'CO', '80902', '719 531-4427', 108 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (23, 'Mitch', 'Jaeger', 'R', 'MUS', '222 Vermijo',
           'Colorado Springs', 'CO', '80920', '719 565-4356', 110 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (24, 'Lisa', 'Lawson', 'M', 'NUR', '4560 Fillmore',
           'Colorado Springs', 'CO', '80920', '719 394-1231', 100 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (25, 'Jill', 'Perry', ' ', 'MAT', '6712 Hancock Expressway',
           'Colorado Springs', 'CO', '80903', '719 254-7874', 103 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (26, 'Bob', 'Tibbs', 'W', 'ECO', '7322 Carefree North',
           'Colorado Springs', 'CO', '80920', '719 531-7244', 104 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (27, 'Sam', 'Crepps', 'R', 'BUS', '456 East Palmer Park',
           'Manitou Springs', 'CO', '80190', '719 345-3297', 102);

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (28, 'Stephen', 'Austin', 'F', 'UND', '3458 S. Union Blvd.',
           'Colorado Springs', 'CO', '80920', '719 357-4491', 105 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (29, 'Tom', 'Peyton', ' ', 'MAT', '6712 Jackson Street',
           'Monument', 'CO', '80902', '719 591-1953', 108 );

INSERT INTO student 
    (stdid, fname, lname, mi, majorid, address, city, state, zip, phone, advid )
  VALUES (30, 'Tim', 'Presley', ' ', 'CIS', '8812 Federal Boulevard',
           'Denver', 'CO', '80222', '303 458-1953', 110 );

/*
----------------------------------------------------------------------
--            FACULTY Table
----------------------------------------------------------------------
*/
DELETE FROM faculty;

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (200, 'Jo Ann', 'Pryor', 'D', 'BUS', '5678 Bramble Lane', 
           'Colorado Springs', 'CO', '80919', '719 575-1001' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (201, 'Mike', 'Osburn', ' ', 'COM', '2205 Joiner Road',
           'Colorado Springs', 'CO', '80920', '719 330-1072' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (202, 'Cheryl', 'Rossi', 'R', 'CS', '468 Centennial Blvd, Apt. A',
           'Colorado Springs', 'CO', '80919', '719 358-5422' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (203, 'Ken', 'Black', 'F', 'HP', '12 Costilla Street',
           'Colorado Springs', 'CO', '80907', '719 651-1234' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (204, 'Barry', 'Sage', 'W', 'BUS', '700 Garden of the Gods Road',
           'Colorado Springs', 'CO', '80920', '719 531-4472' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (205, 'Daniel', 'Selby', 'R', 'BUS', '4523 North Nevada',
           'Colorado Springs', 'CO', '80920', '719 570-6543' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (206, 'Marlo', 'Spangle', 'M', 'ENG', '1754 Fountain Blvd.',
           'Colorado Springs', 'CO', '80920', '719 395-5431' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (207, 'Dorothy', 'Medina', ' ', 'LA', '6432 Adobe Drive',
           'Colorado Springs', 'CO', '80903', '719 264-7074' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (208, 'Ronald', 'Ralph', 'W', 'BUS', '1900 Garden of the Gods Road',
           'Colorado Springs', 'CO', '80920', '719 531-4472' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (209, 'Samuel', 'King', 'R', 'SCI', '166456 East Palmer Park',
           'Manitou Springs', 'CO', '80190', '719 345-9007' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (210, 'Marty', 'Cornell', 'Q', 'ENG', '4489 VanReen St.',
           'Colorado Springs', 'CO', '80920', '719 357-6891' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (211, 'Debbie', 'Cantun', ' ', 'BUS', '9034 East Wing Street',
           'Colorado Springs', 'CO', '80935', '719 632-1290' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (212, 'Brad', 'Lee', 'D', 'CS', '9097 Market Street', 
           'Monument', 'CO', '80902', '719 234-1234' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (213, 'Mindy', 'Nguyen', 'M', 'CS', '246 Terrain Road', 
           'Colorado Springs', 'CO', '80909', '719 570-2718' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (214, 'Sam', 'Sheridan', 'D', 'HP', '1625 Woodland Dr.', 
           'Monument', 'CO', '80931', '719 654-5681' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (215, 'James', 'Lopez', ' ', 'LA', '5511 E. Border Street',
           'Colorado Springs', 'CO', '80920', '719 330-4245' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (216, 'Brent', 'Doerr', 'R', 'ENG', '4162 Aerotech Road',
           'Colorado Springs', 'CO', '80919', '719 324-6634' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (217, 'Thomas', 'Aquino', 'F', 'ENG', '5123 Paisano',
           'Colorado Springs', 'CO', '80907', '719 651-2345' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (218, 'Tom', 'Robertson', 'W', 'LA', '2205 Austin Road',
           'Monument', 'CO', '80902', '719 531-4427' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (219, 'Mitch', 'Baxter', 'R', 'HP', '4542 Wynbury',
           'Colorado Springs', 'CO', '80920', '719 565-4356' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (220, 'Fred', 'Larson', 'M', 'HP', '675 Fountain Blvd.',
           'Colorado Springs', 'CO', '80920', '719 234-1176' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (221, 'Joan', 'Smith', ' ', 'SCI', '1342 Williamette Street',
           'Colorado Springs', 'CO', '80903', '719 254-7874' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (222, 'Bill', 'Patterson', 'W', 'SCI', '2234-A Razorback Street',
           'Colorado Springs', 'CO', '80920', '719 531-7244' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (223, 'Ralph', 'Montoya', 'R', 'CS', '456 East Pikes Peak St',
           'Manitou Springs', 'CO', '80920', '719 565-2197' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (224, 'Steve', 'Dallas', 'F', 'LA', '3458 S. Union Blvd.',
           'Colorado Springs', 'CO', '80919', '719 327-4081' );

INSERT INTO faculty (facid, fname, lname, mi, deptid, address, city, state, zip, phone )
  VALUES (225, 'Bob', 'Perlman', ' ', 'COM', '6174 Washington Street',
           'Monument', 'CO', '80902', '719 591-1944' );

/*
----------------------------------------------------------------------
--            COURSE Table
----------------------------------------------------------------------
*/
DELETE FROM course;

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'BUS215', 'Principles of Budget and Finance', 'BUS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'BUS250', 'Introduction to Business', 'BUS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'BUS315', 'Developing Management Skills', 'BUS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'BUS461', 'Management', 'BUS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'BUS466', 'Negotiation', 'BUS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'COM310', 'Interpersonal Communications', 'COM', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'COM400', 'Intercultural Communications', 'COM', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'COM407', 'Leadership Principles', 'COM', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'COM408', 'Conflict Management', 'COM', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS208', 'Introduction to Computers', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS241', 'Control Structures', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS320', 'C Programming', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS341', 'Data Structures', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS406', 'Managing Web Technologies', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS425', 'Systems Analysis and Design', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS442', 'Database Programming', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS444', 'Software Engineering', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS445', 'Database Management Systems', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'CS450', 'Data Networks', 'CS', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'ENG200', 'Essentials of Effective Writing', 'ENG', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'ENG203', 'Intermediate Composition', 'ENG', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'ENG325', 'Advanced Composition', 'ENG', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'ENG385', 'Art of Persuasion', 'ENG', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'ENG475', 'Business Writing', 'ENG', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'HP201', 'Introduction to Nursing', 'HP', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'HP221', 'Patient Assessment', 'HP', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'HP320', 'Critical Care Nursing', 'HP', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'HP410', 'Emergency Room Procedures', 'HP', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'HP451', 'Psychological Disorders', 'HP', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'LA402', 'Craft of Writing', 'LA', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'LA403', 'Cultural Competence in Education', 'LA', 3 );

INSERT INTO course ( courseid, description, deptid, credhrs )
  VALUES ( 'LA440', 'Literacy Development', 'LA', 3 );

/*
----------------------------------------------------------------------
--            ENROLLMENT Table
----------------------------------------------------------------------
*/
DELETE FROM enrollment;

INSERT INTO enrollment ( stdid, courseid, section, term )
  VALUES ( 20, 'COM408', '110', '2003SP8W1' );

INSERT INTO enrollment ( stdid, courseid, section, term )
  VALUES ( 30, 'COM408', '110', '2003SP8W1' );

INSERT INTO enrollment ( stdid, courseid, section, term )
  VALUES ( 15, 'COM408', '110', '2003SP8W1' );

INSERT INTO enrollment ( stdid, courseid, section, term )
  VALUES ( 10, 'COM408', '110', '2003SP8W1' );

INSERT INTO enrollment ( stdid, courseid, section, term )
  VALUES ( 17, 'COM408', '110', '2003SP8W1' );

INSERT INTO enrollment ( stdid, courseid, section, term )
  VALUES ( 12, 'COM408', '110', '2003SP8W1' );

COMMIT;