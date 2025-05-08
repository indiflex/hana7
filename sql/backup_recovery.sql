create table Test (
  id int unsigned not null auto_increment Primary Key,
  ttt varchar(31) not null,
  dept tinyint unsigned not null
);

insert into Test(ttt, dept)
         values ('aaa1', 3), ('aaa2', 4), ('aaa3', 5),
                ('aaa4', 6), ('aaa5', 7);

delete from Test where id in (3,4,5);

select * from Test;

-- full backup : 17:05
-- mysqldump -uroot -pTestdbRoot -h 127.0.0.1 -P 3309 -R -F -v testdb > backup_full.sql

-- 17:06:16 (372)
insert into Test(ttt, dept) values ('bbb', 5), ('ccc', 6);

update Test set ttt='CCC' where id = 7;

-- 925 -------------------------------------------- 복구 시점!! 

-- 실수 발생!  17:07:19 (984)
delete from Test;


-- binlog
-- mysqlbinlog --no-defaults --start-datetime="2025-05-08 17:06:16" --stop-datetime="2025-05-08 17:07:18" -d testdb mysql/binlog.000081 > backup_bin.sql

-- recovery
select * from Test;

-- mysql -uroot -pTestdbRoot -h 127.0.0.1 -P 3309 testdb < backup_full.sql