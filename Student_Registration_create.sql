-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-06 08:25:52.905

-- tables
-- Table: Course
CREATE TABLE Course (
    Id_Course integer  NOT NULL,
    Course_name varchar2(20)  NOT NULL,
    Duration varchar2(10)  NOT NULL,
    Amount float(4)  NOT NULL,
    Start_Date date  NOT NULL,
    CONSTRAINT Course_pk PRIMARY KEY (Id_Course)
) ;

-- Table: Course_Enrolment
CREATE TABLE Course_Enrolment (
    Id_Student integer  NOT NULL,
    Id_Course integer  NOT NULL,
    Id_Course_Enrolment integer  NOT NULL,
    "Date" date  NOT NULL,
    Details varchar2(100)  NOT NULL,
    CONSTRAINT Course_Enrolment_pk PRIMARY KEY (Id_Course_Enrolment)
) ;

-- Table: Student
CREATE TABLE Student (
    Id_Student integer  NOT NULL,
    Name varchar2(50)  NOT NULL,
    Last_name varchar2(50)  NOT NULL,
    DOB date  NOT NULL,
    Address varchar2(100)  NOT NULL,
    Pincode varchar2(6)  NOT NULL,
    Phone varchar2(10)  NOT NULL,
    Fax_number varchar2(10)  NULL,
    CONSTRAINT Student_pk PRIMARY KEY (Id_Student)
) ;

-- foreign keys
-- Reference: Course_Enrollment_Course (table: Course_Enrolment)
ALTER TABLE Course_Enrolment ADD CONSTRAINT Course_Enrollment_Course
    FOREIGN KEY (Id_Course)
    REFERENCES Course (Id_Course);

-- Reference: Course_Enrollment_Student (table: Course_Enrolment)
ALTER TABLE Course_Enrolment ADD CONSTRAINT Course_Enrollment_Student
    FOREIGN KEY (Id_Student)
    REFERENCES Student (Id_Student);

-- End of file.

