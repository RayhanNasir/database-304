
drop table dependent;
drop table employee;
drop table department;

CREATE TABLE DEPARTMENT
  (DNAME          VARCHAR2(15),
   DNUMBER        NUMBER(2) NOT NULL,
   MGRSSN         NUMBER(12),
   MGRSTARTDATE   DATE,
   PRIMARY KEY (dnumber)
);


CREATE TABLE employee
  (FNAME           VARCHAR2(15),
   MINIT           VARCHAR2(2),
   LNAME           VARCHAR2(15),
   SSN             NUMBER(12) NOT NULL,
   BDATE           DATE,
   ADDRESS         VARCHAR2(35),
   SEX             VARCHAR2(1),
   SALARY          NUMBER(7) NOT NULL,
   SUPERSSN        NUMBER(12),
   DNO             NUMBER(2) NOT NULL,
   PRIMARY KEY (ssn),
   FOREIGN KEY (dno) REFERENCES department (dnumber)
);

/*
CREATE TABLE DEPENDENT 
(ESSN                   NUMBER(12),
 DEPENDENT_NAME         VARCHAR2(15),
 SEX                    VARCHAR2(1),
 BDATE                  DATE,
 RELATIONSHIP           VARCHAR2(12),
 PRIMARY KEY (essn, dependent_name),
 FOREIGN KEY (essn) REFERENCES employee (ssn)
);


INSERT INTO DEPARTMENT VALUES ('RESEARCH',       5, 333445555, '22-MAY-1978') ;
INSERT INTO DEPARTMENT VALUES ('ADMINISTRATION', 4, 987654321, '01-JAN-1985') ;
INSERT INTO DEPARTMENT VALUES ('HEADQUARTERS',   1, 888665555, '19-JUN-1971') ;

INSERT INTO EMPLOYEE VALUES
('JOHN','B','SMITH',123456789,'09-JAN-1955','731 FONDREN, HOUSTON, TX', 'M',30000,333445555,5) ;
INSERT INTO EMPLOYEE VALUES
('FRANKLIN','T','WONG',333445555,'08-DEC-1945','638 VOSS,HOUSTON TX', 'M',40000,888665555,5) ;
INSERT INTO EMPLOYEE VALUES
('ALICIA','J','ZELAYA',999887777,'19-JUL-1958','3321 CASTLE, SPRING, TX', 'F',25000,987654321,4) ;
INSERT INTO EMPLOYEE VALUES
('JENNIFER','S','WALLACE',987654321,'20-JUN-1931','291 BERRY, BELLAIRE, TX', 'F',43000,888665555,4) ;
INSERT INTO EMPLOYEE VALUES
('RAMESH','K','NARAYAN',666884444,'15-SEP-1952','975 FIRE OAK, HUMBLE, TX', 'M',38000,333445555,5) ;
INSERT INTO EMPLOYEE VALUES
('JOYCE','A','ENGLISH',453453453,'31-JUL-1962','5631 RICE, HOUSTON, TX', 'F',25000,333445555,5);
INSERT INTO EMPLOYEE VALUES
('AHMAD','V','JABBAR',987987987,'29-MAR-1959','980 DALLAS, HOUSTON, TX', 'M',25000,987654321,4) ;
INSERT INTO EMPLOYEE VALUES 
('JAMES','E','BORG',888665555,'10-NOV-1927', '450 STONE, HOUSTON, TX', 'M',55000,NULL,1) ;

INSERT INTO DEPENDENT VALUES (333445555,'ALICE','F','05-APR-1976','DAUGHTER') ;
INSERT INTO DEPENDENT VALUES (333445555,'THEODORE','M','25-OCT-1973','SON')  ;
INSERT INTO DEPENDENT VALUES (333445555,'JOY','F','03-MAY-1948','SPOUSE');
INSERT INTO DEPENDENT VALUES (123456789,'MICHAEL','M','01-JAN-1978','SON');
INSERT INTO DEPENDENT VALUES (123456789,'ALICE','F','31-DEC-1978','DAUGHTER');
INSERT INTO DEPENDENT VALUES (123456789,'ELIZABETH','F','05-MAY-1957','SPOUSE');
INSERT INTO DEPENDENT VALUES (987654321,'ABNER','M','26-FEB-1932','SPOUSE');


*/



drop table dependent;
drop table employee;
drop table department;

CREATE TABLE DEPARTMENT
  (DNAME          VARCHAR2(15),
   DNUMBER        NUMBER(2) NOT NULL,
   MGRSSN         NUMBER(12),
   MGRSTARTDATE   DATE,
   PRIMARY KEY (dnumber)
) ;


CREATE TABLE employee
  (FNAME           VARCHAR2(15),
   MINIT           VARCHAR2(2),
   LNAME           VARCHAR2(15),
   SSN             NUMBER(12) NOT NULL,
   BDATE           DATE,
   ADDRESS         VARCHAR2(35),
   SEX             VARCHAR2(1),
   SALARY          NUMBER(7) NOT NULL,
   SUPERSSN        NUMBER(12),
   DNO             NUMBER(2) NOT NULL,
   PRIMARY KEY (ssn),
   FOREIGN KEY (dno) REFERENCES department (dnumber) ON DELETE CASCADE
) ;



CREATE TABLE DEPENDENT 
(ESSN                   NUMBER(12),
 DEPENDENT_NAME         VARCHAR2(15),
 SEX                    VARCHAR2(1),
 BDATE                  DATE,
 RELATIONSHIP           VARCHAR2(12),
 PRIMARY KEY (essn, dependent_name),
 FOREIGN KEY (essn) REFERENCES employee (ssn) ON DELETE CASCADE
) ;


INSERT INTO DEPARTMENT VALUES ('RESEARCH',       5, 333445555, '22-MAY-1978') ;
INSERT INTO DEPARTMENT VALUES ('ADMINISTRATION', 4, 987654321, '01-JAN-1985') ;
INSERT INTO DEPARTMENT VALUES ('HEADQUARTERS',   1, 888665555, '19-JUN-1971') ;

INSERT INTO EMPLOYEE VALUES
('JOHN','B','SMITH',123456789,'09-JAN-1955','731 FONDREN, HOUSTON, TX', 'M',30000,333445555,5) ;
INSERT INTO EMPLOYEE VALUES
('FRANKLIN','T','WONG',333445555,'08-DEC-1945','638 VOSS,HOUSTON TX', 'M',40000,888665555,5) ;
INSERT INTO EMPLOYEE VALUES
('ALICIA','J','ZELAYA',999887777,'19-JUL-1958','3321 CASTLE, SPRING, TX', 'F',25000,987654321,4) ;
INSERT INTO EMPLOYEE VALUES
('JENNIFER','S','WALLACE',987654321,'20-JUN-1931','291 BERRY, BELLAIRE, TX', 'F',43000,888665555,4) ;
INSERT INTO EMPLOYEE VALUES
('RAMESH','K','NARAYAN',666884444,'15-SEP-1952','975 FIRE OAK, HUMBLE, TX', 'M',38000,333445555,5) ;
INSERT INTO EMPLOYEE VALUES
('JOYCE','A','ENGLISH',453453453,'31-JUL-1962','5631 RICE, HOUSTON, TX', 'F',25000,333445555,5);
INSERT INTO EMPLOYEE VALUES
('AHMAD','V','JABBAR',987987987,'29-MAR-1959','980 DALLAS, HOUSTON, TX', 'M',25000,987654321,4) ;
INSERT INTO EMPLOYEE VALUES 
('JAMES','E','BORG',888665555,'10-NOV-1927', '450 STONE, HOUSTON, TX', 'M',55000,NULL,1) ;

INSERT INTO DEPENDENT VALUES (333445555,'ALICE','F','05-APR-1976','DAUGHTER') ;
INSERT INTO DEPENDENT VALUES (333445555,'THEODORE','M','25-OCT-1973','SON')  ;
INSERT INTO DEPENDENT VALUES (333445555,'JOY','F','03-MAY-1948','SPOUSE');
INSERT INTO DEPENDENT VALUES (123456789,'MICHAEL','M','01-JAN-1978','SON');
INSERT INTO DEPENDENT VALUES (123456789,'ALICE','F','31-DEC-1978','DAUGHTER');
INSERT INTO DEPENDENT VALUES (123456789,'ELIZABETH','F','05-MAY-1957','SPOUSE');
INSERT INTO DEPENDENT VALUES (987654321,'ABNER','M','26-FEB-1932','SPOUSE');




drop table dependent;
drop table employee;
drop table department;

CREATE TABLE DEPARTMENT
  (DNAME          VARCHAR2(15),
   DNUMBER        NUMBER(2) NOT NULL,
   MGRSSN         NUMBER(12),
   MGRSTARTDATE   DATE,
   primary key(dnumber)
) ;

CREATE TABLE employee
  (FNAME           VARCHAR2(15),
   MINIT           VARCHAR2(2),
   LNAME           VARCHAR2(15),
   SSN             NUMBER(12) NOT NULL,
   BDATE           DATE,
   ADDRESS         VARCHAR2(35),
   SEX             VARCHAR2(1),
   SALARY          NUMBER(7) NOT NULL,
   SUPERSSN        NUMBER(12),
   DNO             NUMBER(2) NOT NULL,
   primary key (ssn),
   FOREIGN KEY (dno) REFERENCES department (dnumber) ON DELETE NO ACTION
) ;

CREATE TABLE DEPENDENT 
(ESSN                   NUMBER(12),
 DEPENDENT_NAME         VARCHAR2(15),
 SEX                    VARCHAR2(1),
 BDATE                  DATE,
 RELATIONSHIP           VARCHAR2(12),
 primary key (essn,dependent_name),
 FOREIGN KEY (essn) REFERENCES employee (ssn) ON DELETE NO ACTION
) ;


DROP TABLE course_contents;
CREATE TABLE course_contents(
	course_id	varchar(10) NOT NULL,
	course_name	varchar(20) UNIQUE,
	credit		integer,
	PRIMARY KEY(course_id)
);

INSERT INTO course_contents VALUES('CSE2101','Data Structure',3);
INSERT INTO course_contents VALUES('CSE2102','Discrete Math',3);
INSERT INTO course_contents VALUES('CSE2107','Discrete Math',3);
INSERT INTO course_contents VALUES('CSE2108','Algorithm',2);




DROP TABLE course_contents;
CREATE TABLE course_contents(
	course_id	varchar(10) NOT NULL,
	course_name	varchar(20) UNIQUE,
	credit		integer CHECK(credit>0 AND credit<5),
	passmark	integer DEFAULT 40,
	PRIMARY KEY(course_id)
);

INSERT INTO course_contents(course_id,course_name,credit) VALUES('CSE2101','Data Structure',3);
INSERT INTO course_contents(course_id,course_name,credit) VALUES('CSE2102','Discrete Math',3);
INSERT INTO course_contents(course_id,course_name,credit) VALUES('CSE2107','Database Systems',3);
INSERT INTO course_contents(course_id,course_name,credit) VALUES('CSE2108','Algorithm',4);
