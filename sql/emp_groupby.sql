select * from Emp order by id desc limit 0, 10;
select * from Emp order by id desc limit 10, 10;
select * from Emp order by id desc limit 20, 10;

select * from Emp order by id desc limit 250, 10;
-- select * from Emp order by id desc limit (page - 1) * 10,10;

select floor(count(*) / 10), count(*) % 10 from Emp;

select * from Emp;
select max(salary) from Emp;
select dept, max(salary) from Emp group by dept;
select * from Emp where salary = (select max(salary) from Emp);

-- update Emp set salary = 900 where id in (152, 97,18,80,133,47,128);

select (select max(dname) from Dept where id = Emp.dept) dept_name,
    dept, count(*), sum(salary) totsal, avg(salary) avgsal 
  from Emp group by dept;
  
-- 부서 별 급여 평균이 전체 평균보다 높은 부서의 id와 평균 급여
-- 1) from 절에 sub-query
select *  
  from (select dept, avg(salary) avgsal from Emp group by dept) s
 where avgsal > (select avg(salary) from Emp);
 
-- 2) having
select dept, avg(salary) avgsal from Emp
 group by dept having avgsal > (select avg(salary) from Emp);
 
-- 위 쿼리 결과에서 부서명 함께 출력
-- 1) sub-query 방식
select (select dname from Dept where id = Emp.dept) dept_name,
       dept, avg(salary) avgsal from Emp
 group by dept having avgsal > (select avg(salary) from Emp);

-- 2) join 방식
select e.dept, avg(e.salary) avgsal, d.dname
  from Emp e inner join Dept d on e.dept = d.id
 group by e.dept having avgsal > (select avg(salary) from Emp);

select e.*, d.id deptId, d.dname
  from Emp e inner join Dept d on e.dept = d.id; 
  
select * from Emp;

select * from Emp
-- update Emp set dept = 100
 where id = 3;

