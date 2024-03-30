
create table topics(
 topic_id int primary key,
 topic_name varchar(50),
 description varchar(255) 
);

create table groups(
  group_id int primary key,
  date date,
  topic_id int,
  foreign key (topic_id) references topics(topic_id)
);

CREATE TABLE STUDENT(
 std_id varchar(30) primary key,
 std_name varchar(50),
 degree varchar(50),
 semester int,
 group_id int,
 foreign key (group_id) references groups(group_id)
);



create table marks(
  group_id int,
  foreign key (group_id) references groups(group_id),
  deliverable_id varchar(255),
  marks float,
  primary key (group_id,deliverable_id)
);

insert into topics values ('1','AI','Discuss Generative AI');
insert into topics values ('2','CyberSecurity','Explain the need of Cybersecurity');
insert into topics values ('3','Data Science','How to manage Raw data');

insert into groups values ('1','2024-4-10','1');
insert into groups values ('2','2024-4-18','2');
insert into groups values ('3','2024-4-26','3');

insert into STUDENT values ('FA22-BCS-001','Abdul Muqeet','BCS','3','1');
insert into STUDENT values ('FA22-BCS-002','Abdul Moiz','BCS','3','1');
insert into STUDENT values ('FA22-BCS-003','Sana Kamran','BCS','3','1');

insert into STUDENT values ('FA22-BCS-004','Wahb Usman','BCS','3','2');
insert into STUDENT values ('FA22-BCS-005','Zain Khan','BCS','3','2');
insert into STUDENT values ('FA22-BCS-006','Zainab Shakeel','BCS','3','2');

insert into STUDENT values ('FA22-BCS-007','Haris Imran','BSE','3','3');
insert into STUDENT values ('FA22-BCS-008','Laiba Maqsood','BSE','3','3');
insert into STUDENT values ('FA22-BCS-009','Muhira Arshad','BSE','3','3');

insert into marks values ('1','FA22-BCS-001','8.5');
insert into marks values ('1','FA22-BCS-002','8');
insert into marks values ('1','FA22-BCS-003','9.5');

insert into marks values ('2','FA22-BCS-004','7.5');
insert into marks values ('2','FA22-BCS-005','6');
insert into marks values ('2','FA22-BCS-006','7');

insert into marks values ('3','FA22-BCS-007','8.5');
insert into marks values ('3','FA22-BCS-008','8');
insert into marks values ('3','FA22-BCS-009','5');


DELETE FROM marks WHERE group_id = 2; --deleting child
UPDATE STUDENT SET group_id = 3 WHERE group_id = 2; 
DELETE FROM groups WHERE group_id = 2;

create view[Daysleft] as select group_id, DATEDIFF(DAY,getdate(),date) date from groups;
select * from [Daysleft];

