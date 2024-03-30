--create database assignment2;

--use assignment2;



create table Authors(
  author_id int Primary Key,
  author_name varchar(100),
  birth_year int
);

create table Borrowers(
  borrower_id int Primary Key,
  borrower_name varchar(100),
  contact_info varchar(100)
  );

  create table Books (
 book_id int Primary Key, 
 title varchar(100),
 genre varchar(100),
 publication_year varchar(100), 
 author_id int ,
 Foreign Key (author_id) references Authors(author_id)
 );

create table Transactions(
 transaction_id int Primary Key,
 book_id int,
 Foreign Key (book_id) references Books(book_id), 
 borrower_id int,
 Foreign Key (borrower_id) references Borrowers(borrower_id),
 transaction_date date,
 due_date date
 );
 
 insert into Authors values ('1','Jaun Elia','1990');
 insert into Authors values ('2','Allama Iqbal','1890');
 insert into Authors values ('3','Zain ul Abideen','1670');

 insert into Borrowers values ('1','Abdul Muqeet','0301-8979898');
 insert into Borrowers values ('2','Wahab Usman','0301-88902898');
 insert into Borrowers values ('3','Haris Imran','0309-83219898');

 insert into Books values ('1','DEVAN-E-JAUN','Ghazal','2023','1');
 insert into Books values ('2','Bang e dara','Poem','1990','2');
 insert into Books values ('3','4 days of Life','Story','1740','3');

insert into Transactions values ('1','1','1','2004-3-24','2003-8-24');
insert into Transactions values ('2','2','2','2000-3-24','2000-9-24');
insert into Transactions values ('3','3','3','2002-3-24','2002-8-24');