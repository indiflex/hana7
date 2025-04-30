create table Prof (
    id smallint not null primary key comment '교수번호',
    name varchar(31) not null comment '교수명',
    likecnt int not null default 0
);
alter table Prof modify column id smallint unsigned not null comment '교수번호';

desc Prof;
desc Student;
show create table Prof;

create table Subject (
    id smallint unsigned not null primary key,
    name varchar(31) not null comment '과목명',
    prof smallint unsigned null comment '교수번호',
    foreign key fk_Subject_prof_Prof (prof)
      references Prof (id) on Update cascade on Delete set null
);

create table Enroll (
    id int unsigned not null primary key,
    subject smallint unsigned not null comment '과목번호',
    student int unsigned not null comment '학번',
    foreign key fk_Enroll_subject (subject)
      references Subject (id) on Update cascade on Delete cascade,
    foreign key fk_Enroll_student (student)
      references Student (id) on Update cascade on Delete cascade
);

insert into Student(name, birthdt, major, mobile, email)
            values ('김일수', '19990123', 1, '01012340001', 'kim@gmail.com');
            
-- bulk insert (batch)
insert into Student(name, birthdt, major, mobile, email)
            values ('김이수', '19990223', 1, '01012340002', 'kim2@gmail.com'),
                   ('김삼수', '19990323', 1, '01012340003', 'kim3@gmail.com');

insert ignore into Student(name, birthdt, major, mobile, email)
            values ('김일수', '19990123', 1, '01012340001', 'kim@gmail.com');
            
insert ignore into Student(name, birthdt, major, mobile, email)
                   values ('김사수', '19990423', 1, '01012340004', 'kim4@gmail.com');
            
insert into Student(name, birthdt, major, mobile, email)
            values ('김사수', '19990423', 1, '01012340004', 'kim5@gmail.com')
    on duplicate key update birthdt = '19990425', major = 1, email = 'kim5@gmail.com';
            
insert ignore into Student(name, birthdt, major, mobile, email)
                   values ('김오수', '19990523', 2, '01012340005', 'kim5@gmail.com');
                   
insert ignore into Student(name, birthdt, major, mobile, email)
                   values ('김육수', '19990623', 4, '01012340006', 'kim6@gmail.com');

select * from Major;
select * from Prof;

-- a ? b : (c > 0 ? x : y);
select *, 
   if(likecnt > 5, 'Best',  if(likecnt <= 2, 'Worst', 'Good')) as level from Prof;

select *, 
    (case likecnt when 2 then 'two' when 3 then 'three' else 'seven' end) as num,
    (case when likecnt > 5 then 'Best' when likecnt <= 2 then 'Worst' else 'Good' end)
     as level
  from Prof;
  
select * from Student;
select * from Enroll;
select * from Subject;

select name, substring(name, 1, 1) from Student
 where name not like '김%';

insert into Major(name) values ('경제학'), ('경영학');

insert into Prof(name, likecnt)
  select concat(substring(name, 1, 1), '교수'), id from Student
   where name not like '%김%';
   
insert into Subject(name, prof)
  select concat('과목', id), id from Prof order by rand();
  
insert into Enroll(subject, student)
  select id, (select id from Student order by rand() limit 1) from Subject;

select * from Student order by rand() limit 1;

update Student set graduatedat = curdate()
 order by rand() limit 1;


select ifnull(graduatedat, '재학중') state, name, mobile phone, email as 'email address' from Student;

select e.id, (select name from Subject where id = e.subject) as subject_name
  from Enroll e
 where e.id = 1;
 
select e.id, s.name, s.id as subjectid
  from Enroll e join Subject s on e.subject = s.id
 where e.id = 1;
  
select * from Prof where id < ANY(select id from Prof);
select * from Prof where id <= SOME(select id from Prof);
select * from Prof where id <= ALL(select id from Prof);

select * from Student where major not in (1,2,3);
select * from Student where name like '김사_';
select * from Student where name like '김사%';
select * from Student where major between 1 and 3;
select distinct major from Student where major between 1 and 3;
explain select * from Student where major between 1 and 3 order by name;
show index from Student;
show create table Student;

select * from Student where major between 1 and 3 order by id;

select * from Subject;
select * from Prof;

select * from Subject s inner join Prof p on s.prof = p.id;
select * from Subject s, Prof p 
 where s.prof = p.id;

select p.*, ifnull(s.name, '담당 교과 없음') subject_name
  from Prof p left outer join Subject s on p.id = s.prof;
  
insert into Prof(name) values('김교수');


desc Student;
desc Prof;
desc Subject;