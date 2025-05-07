WITH RECURSIVE cte (n, p) AS
(
  SELECT 1, 1     -- initial(root) row set
  UNION ALL
  SELECT n + 1, pow(n + 1, 2) FROM cte WHERE n < 5 -- additional row sets
)
SELECT * FROM cte;

select d.dname, e.dept, avg(e.salary) avgsal
  from Emp e inner join Dept d on e.dept = d.id
 group by dept
 order by avgsal desc;
 
WITH AvgSal AS
   (select d.dname, e.dept, avg(e.salary) avgsal
      from Emp e inner join Dept d on e.dept = d.id
     group by dept),
    MaxSal AS (select * from AvgSal order by avgsal desc limit 1),
    MinSal AS (select * from AvgSal order by avgsal limit 1),
    SumUp AS
     (select * from MaxSal
       UNION
      select * from MinSal)
 select * from SumUp
 UNION
 select '평균 차액', ' - ', max(avgsal) - min(avgsal) from SumUp;
 
select * from Dept where pid = 0;
select * from Dept where pid in (1, 2);
select * from Dept where pid in (3,4,5,6,7);

insert into Dept(pid, dname) values(6, '인프라셀');
insert into Dept(pid, dname) values(6, 'DB셀');
insert into Dept(pid, dname) values(7, '모바일셀');

select * from Dept d1 inner join Dept d2 on d1.id = d2.pid;

WITH RECURSIVE CteDept(id, pid, pname, dname, dx, h) AS 
(
    select id, pid, cast('' as char(31)), dname, 0, cast(id as  char(10))
      from Dept where pid = 0
    UNION ALL
    select d.id, d.pid, cte.dname, d.dname, dx + 1, concat(cte.h, '-', d.id) 
      from Dept d inner join CteDept cte on d.pid = cte.id
)
select concat(repeat('↳', dx), dname), id, dname, h from CteDept order by h;

show variables like '%max%';
