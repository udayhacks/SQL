-- Active: 1670956828128@@127.0.0.1@3306@uday_k


-- DL = DEFINATIONAL LANGUAGE 
-- ML = MANUPULATIONG LANGUAGE 
-- CL = CONTROL LANGUAGE 


/* DDL DATA DEFINATIONAAL LAMGUAGE ;*/



-- CREATE COMMENT
-- ALTER
-- DROP
--TRUNCATE
--RENAME



---- CREATE ----


CREATE TABLE student (
    id int ,
    course varchar(12),
    clg VARCHAR(13) 
   

);
drop table student_copy ;


create table student_copy as select  * from  student ;



CREATE TABLE student (
    id int not null,
    course varchar(12),
    clg VARCHAR(13) ,
    primary key (id)
);

desc table student_copy;

desc table student;

alter table student_copy drop id ;

alter table student_copy add id int ;


alter table student_copy modify id varchar(10);

alter table student add dateofbirth date;
alter table student_copy  modify id int not null ; 

alter table student add unique (id) ;
alter table student_copy add constraint uc_person unique (id , course) ;

alter Table student_copy drop INDEX uc_person ;

--alter Table student_copy drop constraint uc_person ;
alter Table student_copy drop INDEX uc_person ;


alter table student_copy add ref2 varchar(12) not null ;

desc table student_copy ;

alter table student_copy add id int  ;

alter table student_copy add foreign key (id)references student(id) ;
alter table student_copy add check ( id >100 );

alter table student add  constraint check_list  check (id >100 );
