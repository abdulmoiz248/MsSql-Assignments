create database Result_db;
use Result_db;

create table Students(
 student_id int primary key,
 Student_name varchar(50),
 date_of_birth date,
 email varchar(255)
);

create table Instructor(
 instructor_id int primary key,
 instructor_name varchar(50),
 department varchar(50)
);

create table courses(
  course_id int primary key,
  course_name varchar(50),
  instructor_id int,
  Foreign key (instructor_id) References Instructor(instructor_id)
);

create table Enrollments(
  enrollment_id int primary key,
  student_id int,
  Foreign key (student_id) References Students(student_id),
  course_id int,
  Foreign key (course_id) References Courses(course_id),
  semester varchar(50)
);


insert into Students values 
(101,'Ahmad Bilal','2000-01-15','bilal@cuilahore.edu.pk'),
(102,'Abdul Ahad','2001-05-20','aahad@cuilahore.edu.pk'),
(103,'Adnan Khan','2002-05-20','adnan@cuilahore.edu.pk'),
(104,'Zohaib Ashrif','2003-05-20','zashrif@cuilahore.edu.pk'),
(105,'Hassan Raza','2005-05-20','hassan@cuilahore.edu.pk');

insert into Instructor values
(201,'Dr. Abid Sohail Bhutta','Databases'),
(202,'Dr. Hamid Turab Mirza','Data Science'),
(203,'Dr. Farooq Ahmad','Formal methods'),
(204,'Dr. Adnan Ahmad','Cyber Security'),
(205,'Dr. Ashfaq Ahmad','Image Processing');

insert into courses values
(301,'Databases',201),
(302,'Data Mining',202),
(303,'Simulation',203),
(304,'Digital Forensics',204),
(305,'Machine Learning',205);

insert into Enrollments values
(401,101,301,'Spring 2024'),
(402,102,301,'Spring 2024'),
(403,103,302,'Spring 2024'),
(404,103,303,'Spring 2024'),
(405,102,302,'Spring 2024'),
(406,101,303,'Spring 2024');

--01
select * from Students where email like 'a%';

--02
select * from Students where date_of_birth between '2001-01-01' and '2003-04-01';

--03
select course_id,count(enrollment_id) as 'Total Enrollments' from Enrollments group by course_id;

--04
select * from Instructor where department in ('Databases', 'Data Science');

--05

select max(date_of_birth) as 'Youngest Student' from Students;
select min(date_of_birth) as 'Oldest Student' from Students;

--06
select * from courses where course_name like '%data%';

--07
select * from Instructor where department like '%Security%' or  department like  '%methods%';

--08
select * from Students where len(student_name)=11;

--09
select * from Instructor where department like 'Data%ing';

--10
select * from Instructor where department like 'Data%' or  department like  '%ing';