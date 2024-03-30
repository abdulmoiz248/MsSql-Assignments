create database UniversityDB;

use UniversityDB;

create table student(
 Student_ID int primary key,
 First_Name varchar(50),
 Last_Name varchar(50),
 Birth_Date date,
 Gender char(1) check (Gender IN('M','F')),
 Email varchar(200) unique
);

create table course(
     Course_ID int primary key,
	 Course_Name varchar(100),
	 Course_Code varchar(20) Unique
);


create table StudentCourse(
    Student_ID int,
	Foreign key (Student_ID) references student(Student_ID),
	Course_ID int,
	Foreign key (Course_ID) references course(Course_ID),
	Primary key(Student_ID,Course_ID)
);

Insert into course values(1,'ICT','CSC800');
Insert into course values(2,'PF','CSC101');
Insert into course values(3,'DSA','CSC106');
Insert into course values(4,'ENGLISH','CSC800');
Insert into course values(5,'OOP','CSC103');

Insert into student values (1,'Haris','Imran','2003-5-25','M','haris@cuilahore.com');
Insert into student values (2,'Wahb','Usman','2004-3-11','M','wahb@cuilahore.com');
Insert into student values (3,'Laiba','Maqsood','2002-9-26','F','laiba@cuilahore.com');
Insert into student values (4,'Zainab','Shakeel','2004-11-3','F','zs@cuilahore.com');
Insert into student values (5,'Muqeet','Naeem','2000-8-2','M','king@cuiisl.com');
Insert into student values (6,'Zain','Khan','2003-2-2','M','zain@cuiisl.com');

Insert into StudentCourse values (1,1);
Insert into StudentCourse values (2,2);
Insert into StudentCourse values (3,3);
Insert into StudentCourse values (4,4);
Insert into StudentCourse values (5,5);


select * from student;
select First_Name,Last_Name from student;
select First_Name,Last_Name from student where Gender='M';
select * from student where Email like '%@cuilahore.com';
select * from course;
select * from course where Course_Code like 'CSC1%';
select * from StudentCourse;



