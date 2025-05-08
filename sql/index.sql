select * from Emp; 
select substring_index(email, '@', -1)  from Emp;
alter table Emp add column email varchar(255);
update Emp set email=concat('mail', id, '@gmail.com');
alter table Emp add index idx_Emp_eamil (email);

explain select * from Emp where email like 'mail1%';
explain select * from Emp where email like '%@gmail.com';
explain select * from Emp where substring_index(email, '@', -1) = 'gmail.com';
select * from Emp where substring_index(email, '@', -1) = 'gmail.com';

alter table Emp add index (
    (substring_index(email, '@', -1))
);

show index from Emp;
alter table Emp drop index idx_Emp_eamil;