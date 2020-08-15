select * from employee where sex='M' and salary>=30000
select * from project where plocation in ('Houston', 'Stafford')
select * from employee where address like '%Houston%'
select * from works_on where hours between 20 and 30
select ssn, CONCAT(fname,'',minit,'',lname) from employee
select ssn, salary, dno from employee where dno = 5 order by salary asc;
select pno, avg(hours) as 'Average Hours' from works_on group by pno
select dno, count(*) as 'Total Count' from employee group by dno order by dno
select dno, count(*) from employee group by dno having count(*)>=3
select year(bdate), count(*) from employee group by year(bdate) order by year(bdate)
select fname from employee where dno = (select dnumber from department where dname = 'Research')
select  dname, avg(salary) from employee inner join department on dno=dnumber group by dname
select e.fname, d.dname from employee e inner join department d on e.dno=d.dnumber
select e.ssn, e.fname, p.pname from employee e inner join works_on w on e.ssn=w.essn inner join project p on w.pno = p.pnumber
select e.fname, e.ssn, d.dependent_name from employee e left join dependent d on e.ssn=d.essn
select e.fname, e.ssn, d.dependent_name from employee e right join dependent d on e.ssn=d.essn
show tables
show databases






