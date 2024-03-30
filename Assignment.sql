-- Create table
CREATE TABLE student (
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
age INT,
gender VARCHAR(10),
major VARCHAR(50),
gpa DECIMAL(3, 2)
);


--Select all columns for all students
select * from student;

--Select only the student IDs and names
select student_id, student_name from student;

--Select the student IDs, names, and majors
select student_id, student_name,major from student;

--Select the student IDs, genders, and GPAs
select student_id, gender,gpa from student;

--Select the student names and ages
select student_name,age from student;

--Select the student IDs and majors
select student_id,major from student;

--Select the student names, genders, and ages
select student_name, gender,age from student;

--Select the student IDs, names, and GPAs
select student_id,student_name,gpa from student;

--Select the student IDs, ages, and majors
select student_id,age,major from student;

--Select the student names, genders, and majors
select student_name,gender,major from student;
--Select all columns for all students, ordered by student ID in ascending order
select * from student order by student_id ASC;

--Select all columns for all students, ordered by student name in ascending order
select * from student order by student_name ASC;

--Select student names and ages, ordered by age in descending order
select student_name,age from student order by age DESC;

--Select student IDs and GPAs, ordered by GPA in ascending order
select student_id,gpa from student order by gpa asc;

--Select student names and majors, ordered by major in ascending order
select student_name,major from student order by major asc;

--Select student IDs and genders, ordered by gender in descending order
select student_id,gender from student order by gender desc;

--Select all columns for all students, ordered by age in ascending order
select * from student order by age asc;

--Select student names and majors, ordered by student name in descending order
select student_name,major from student order by student_name desc;

--Select student IDs and ages, ordered by age in descending order
select student_id,age from student order by age desc;

--Select student names and GPAs, ordered by GPA in descending order
select student_name,gpa from student order by gpa desc;

--Select student names along with their majors, renaming the columns
select student_name as 'Student Name', major as 'Major' from student;

--Select student IDs and ages, renaming the columns
select student_id as 'ID' , age as'Age' from student;

--Select student genders and GPAs, renaming the columns
select gender as 'Gender' , gpa as 'GPA'from student;

--Select student names concatenated with their majors, renaming the concatenated column
select (student_name+ '&' + major ) as 'Student & Major' from student;

--Select the average GPA of all students, renaming the calculated column
select avg(gpa) as 'Avg GPA' from student;

--Select distinct student majors
select distinct major from student;

--Select distinct student genders
select distinct gender from student;

--Select distinct student ages
select distinct age from student;

--Select distinct combinations of student names and majors
select distinct student_name,major from student

--Select distinct combinations of student ages and GPAs
select distinct age,gpa from student;

--Select students with GPA greater than 3.5 and majoring in Computer Science
select * from student where gpa>3.5 and major='Computer Science';

--Select students with age less than 20 or GPA greater than or equal to 3.8
select * from student where age<20 or gpa>=3.8;

--Select students with gender not equal to 'Male'
select * from student where gender!='Male';

--Select students with GPA less than 3.0 and not majoring in Mathematics
select * from student where gpa<3.0 and major!='Mathematics';

--Select students with age between 20 and 22 (inclusive)
select * from student where age>=20 and age<=22;
select * from student where age between 20 and 22;

--Select students with GPA less than 3.5 or majoring in Biology
select * from student where gpa<3.5 or major='Biology';

Select students with age greater than or equal to 21 and majoring in Engineering
select * from student where age>=21 and major='Engineering';

--Select students with GPA not between 3.0 and 3.5
select * from student where gpa not between 3.0 and 3.5;

--Select students with age less than 20 and GPA less than 3.0
select * from student where age<20 and gpa<3.0;

--Select students with age not equal to 21 or majoring in English
select * from student where age!=21 and major='English';

--Select students with ages between 20 and 22
select * from student where age between 20 and 22;

--Select students with GPAs between 3.5 and 4.0
select * from student where gpa between 3.5 and 4.0;

--Select students with IDs between 5 and 10
select * from student where student_id between 5 and 20;

--Select students with ages between 18 and 25 and majoring in Computer Science
select * from student where age between 18 and 25 and major='Computer Science';

--Select students with GPAs between 3.0 and 3.5 and not majoring in Biology
select * from student where gpa between 3.0 and 3.5 and major!='Biology';

--Select students majoring in Computer Science, Engineering, or Biology
select * from student where major in('Computer Science','Engineering','Biology');

--Select students with ages 20, 21, or 22
select * from student where age in(20,21,22);

--Select students with GPAs 3.5, 3.6, or 3.7
select * from student where gpa in(3.5,3.6,3.7);

--Select students with IDs 1, 3, 5, 7, or 9
select * from student where student_id in(1,3,5,7,9);

--Select students majoring in Economics, History, or Political Science
select * from student where major in('Economics','History','Political Science');

--Calculate the total number of students
select Count(*) as 'Total Number Of Students' from student;

--Calculate the average GPA of all students
select avg(gpa) as 'Avg GPA' from student

--Find the maximum age among all students
select max(age) as 'Maximum Age' from student;

--Find the minimum GPA among all students
select min(gpa) as 'Minimum GPA' from student;

--Calculate the sum of ages of all students
select sum(age) as 'Sum of Age' from student;

--Find the average age of male students
select sum(age) as 'Sum of Age' from student where gender='Male';

--Calculate the total number of female students
select count(*) as 'Total Female Students' from student where gender='Female';

--Find the highest GPA among students majoring in Computer Science
select max(gpa) as 'Maximum GPA' from student where major='Computer Science';

--Calculate the total number of students with GPA greater than 3.5
select count(*) as 'Total Students' from student where gpa>3.5;

--Find the average age of students majoring in Biology
select avg(age) as 'Average Age' from student where major='Biology';

--Select students whose names start with "J"
select * from student where student_name like 'j%';

--Select students whose names end with "son"
select * from student where student_name like '%son';

--Select students whose names contain "li"
select * from student where student_name like '%li%';

--Select students whose majors start with "Compu"
select * from student where major like 'Compu%';

--Select students whose majors end with "ology"
select * from student where major like '%ology';

--Select students whose majors contain "Eng"
select * from student where major like '%Eng%';

--Select students whose genders start with "F"
select * from student where gender like 'F%';

--Select students whose genders end with "le"
select * from student where gender like '%le';

--Select students whose ages contain "2"
select * from student where age like '2%';

--Select students whose GPAs contain "3.5"
select * from student where gpa=3.5;

--Find the count of students for each major
select major, count(*) as 'Total Students' from student group by major;

--Calculate the average GPA for each gender
select avg(gpa) as 'Average GPA' from student group by gender;

--Find the maximum age for each major
select max(age) as 'Maximum Age' from student group by major;

--Calculate the total number of students for each age
select age,count(*) as 'Total Students' from student group by age;

--Find the minimum GPA for each gender
select gender, min(gpa) as 'Minimum GPA' from student group by gender;

--Calculate the average age for each major
select major, avg(age) as 'Avg Age' from student group by major;

--Find the total number of male students for each major
select Major,count(*) as 'Total Male' from student where gender='Male' group by major;

--Calculate the sum of GPAs for each major
select major,sum(gpa) as 'Sum' from student group by major;

--Find the maximum GPA for each age
select age,max(gpa) as 'Max age' from student group by age;

--Calculate the average GPA for each major among female students
select major, avg(gpa) as 'Avg GPA' from student where gender='Female' group by major;

--Find majors with more than 5 students
select major from student group by major having count(*) >5

--Find genders with an average GPA greater than 3.5
select gender from student group by gender having avg(gpa)>3.5

--Find ages with more than 2 students
select age from student group by age having count(*) >2;

--Find majors with at least one student with a GPA less than 3.0
select major from student where gpa<3.0 group by major;

--Find majors with an average age greater than 22
select major from student group by major having avg(age)>22;

--Find genders with more than 3 female students
select gender from student group by gender having gender='female' and count(*)>3;

--Find majors with at least one student aged 20
select major from student where age=20 group by major ;

--Find ages with more than 4 students and an average GPA greater than 3.0
select age from student where gpa>3.0 group by age having count(*) >4;

--Find majors with exactly 2 female students
select major from student where gender='Female' group by major having count(*)=2;

--Find genders with a total GPA greater than 25
select gender from student group by gender having sum(gpa)>25;



