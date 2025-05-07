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
 
