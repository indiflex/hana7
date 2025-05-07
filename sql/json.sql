alter table Emp add column remark json;
alter table Emp drop column remark2;

update Emp set remark = '{"id": 1, "age": 30, "fam": [ {"id": 1, "name": "유세차"} ]}',
                remark2 = '{"id": 1, "age": 30, "fam": [{"id": 1, "name": "유세차"}]}'
 where id = 2;
 
update Emp set remark = '{"id": 3, "age": 33, "fam": [{"id": 1, "name": "유세차"}, {"id":2, "name": "홍길숭"}]}'
 where id = 3;

update Emp set remark = '{"id": 4, "age": 34, "fam": [{"id": 1, "name": "유세차"}]}'
 where id = 4;

update Emp set remark = json_object( 'id', 5, 'age', 44, 
                  'fam', json_array(
                                json_object('id', 1, 'name', '지세차'),
                                json_object('id', 2, 'name', '지세창')   )  )
 where id = 5;


select json_pretty(remark), e.* from Emp e where id <= 5;

select id, remark->'$.id', remark ->> '$.age',
    remark->>'$.fam[0 to 2].name', remark->>'$.fam[last].name',
    remark->>'$.fam[last - 1 to last].name',
    json_valid(remark)
  from Emp 
  where json_object('id', 1, 'name', "유세차") member of (remark->'$.fam');
  -- where remark->>'$.age' = 33;
  -- where remark->>'$.fam[0].name' = '유세차';

select JSON_EXTRACT(remark, "$.id"),   remark->'$.id', 
        JSON_UNQUOTE(JSON_EXTRACT(remark, "$.fam[0].name")), remark->>'$.id',
        json_value(remark, '$.id'), JSON_TYPE(remark ->'$.age')
  from Emp where id <= 5;

alter table Emp add index index_Emp_remark_fam ((
  cast(remark->>'$.age' as char(255) array)
));

update Emp set remark = json_object('id', 1, 'age', 55, 'name', 'Hong')
 where id = 2;
 
update Emp set remark = json_insert(remark, '$.addr', 'Seoul')
 where id = 2;
 
update Emp set remark 
   = json_insert(remark, '$.fam', json_array(json_object('id', 1, 'name', '유세홍')))
 where id = 2;
 
update Emp set remark
   = json_array_append(remark, '$.fam', json_object('id', 2, 'name', '유세이'))
 where id = 2;
 
update Emp set remark 
   = json_set(remark, '$.fam[1].name', '새로이')
 where id = 2;
 
 
 
update Emp set remark = JSON_REMOVE(remark, '$.addr') where id = 2;
update Emp set remark = '[1,2,3]' where id = 4;
select * from Emp where 2 member of (remark->'$');
 
select remark from Emp where id in (2, 3, 4);
select remark from Emp where remark->'$.fam[1].name' = '새로이';

select JSON_STORAGE_SIZE(remark) from Emp;

select e.*, d.dname
  from Emp e inner join Dept d on e.remark->'$.fam[0].id' = d.id
 where json_length(e.remark->'$.fam') > 0;

-- fetch(api_url, {method: 'PATCH', content-type:'json/application', body: JSON.strigify(obj)});

select JSON_OBJECTAGG(dname, id) from Dept d;
select * from Dept;

