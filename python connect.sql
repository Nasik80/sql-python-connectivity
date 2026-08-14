use db_employee;
show tables;
RENAME TABLE `c85d7890-5681-4316-b285-fef10aa8f3c2` TO employee;
select distinct location from employee;
select location,count(*) from employee group by location having count(*) > 100;