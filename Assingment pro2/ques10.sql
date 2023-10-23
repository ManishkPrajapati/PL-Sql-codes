drop procedure if exists ques10;
delimiter $
create procedure ques10()
BEGIN
	declare _EMPNO,_MGR,_SAL,_COMM,_DEPTNO,_BONUSID int;     
	declare _ENAME,_GENDER,_JOB,_PHONE,_USERNAME,_PWD varchar(50); 
	declare _HIREDATE date; 
	declare _isActive bool;
	declare c1 cursor for select * from emp;
	declare exit handler for 1329 select "Exception is handled";
	drop table if exists emp10;
	drop table if exists emp20;
	drop table if exists emp30;
	create table emp10 like emp;
	create table emp20 like emp;
	create table emp30 like emp;
	
	open c1;
	loop10:loop
		
		fetch c1 into _EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,
		_USERNAME,_PWD,_PHONE,_isActive;
		
		if(_deptno =10) THEN
			insert into emp10 values(_EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,
				_USERNAME,_PWD,_PHONE,_isActive);
			
		elseif (_deptno =20) THEN
			insert into emp20 values(_EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,
				_USERNAME,_PWD,_PHONE,_isActive);
		
		elseif (_deptno =30) THEN
			insert into emp30 values(_EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,
				_USERNAME,_PWD,_PHONE,_isActive);
		
		elseif(_deptno !=10 and _deptno !=20 and _deptno !=30) THEN
			select "Employee department is different than 10 20 and 30";
			
		end if;
	end loop loop10;
	close c1;
end $ 
delimiter ;
