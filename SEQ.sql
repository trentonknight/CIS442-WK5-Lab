/*Trigger for generating PK for ON INSERT*/
DROP SEQUENCE newID;
CREATE SEQUENCE newID INCREMENT BY 5;
CREATE OR REPLACE TRIGGER goUp
AFTER INSERT ON Student
FOR EACH ROW
BEGIN
INSERT INTO STUDENT(STDID)
VALUES(newID.NEXTVAL);
END;
/
