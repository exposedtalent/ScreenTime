CREATE TABLE PatientInfo(
  First_Name varchar(30),
  Last_Name varchar(30),
  age int(2),
  PatientID int(4) primary key,
  DoctorID int(4)
);

CREATE TABLE Doctor(
  First_Name varchar(30),
  Last_Name varchar(30),
  Specialization varchar(30),
  Hospital varchar(30),
  DoctorID int(4) primary key
);
INSERT INTO Doctor (First_Name, Last_Name, Specialization, Hospital, DoctorID)
VALUES ('Andy', 'Moore', 'Family medicine', 'Banner', 1001),
       ('Paul', 'Anderson', 'Neurology', 'Phoenix Children', 2010),
       ('John', 'Doe', 'Pathology', 'HonorHealth', 3001),
       ('Josh', 'Anderson', 'Familly medicine', 'Banner', 1010),
       ('Eric', 'Lopez', 'Internal Medicine', 'Abrazo', 4045);

INSERT INTO PatientInfo (First_Name, Last_Name, age, PatientID, DoctorID)
VALUES  ('Paul', 'Smith', 23, 1000, 1001),
        ('Brian', 'Johnson', 56, 1001, 2010), 
        ('Stephnie', 'Jones', 38, 1002, 4045),
        ('Nancy', 'Brown', 86, 1003, 1001),
        ('Steve', 'Martin', 54, 1004, 4045), 
        ('Josh', 'Lee', 36, 1005, 3001), 
        ('Jose', 'Ramirez', 29, 1006, 1001);


QUERIES:

select * from Doctor;
select * from PatientInfo;

select First_Name, Last_Name from PatientInfo;
select First_Name, Last_Name from Doctor;
select First_Name, Last_Name from PatientInfo where DoctorID = 3001;
select First_Name, Last_Name from Doctor where DoctorID = 1001;
select First_Name, Last_Name from Doctor where Hospital = 'Banner';

