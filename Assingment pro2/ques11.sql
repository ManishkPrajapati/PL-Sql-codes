drop procedure if exists ques11;
drop table if exists tt;
delimiter $
create table tt(c1 varchar(2000));
create procedure ques11()
BEGIN
	declare z int;
	declare _deptno int;
	set _deptno := 0;
		
		l1: loop
			set _deptno := _deptno + 10;
			set z := (select count(deptno) from emp where deptno = _deptno);
			if z>0 and _deptno <=50 THEN
				insert into tt select concat(_deptno,'->','(',group_concat(ename),')') as emply from emp where deptno =_deptno;
			else if z=0 and _deptno <=50 THEN
				insert into tt select concat(_deptno,'->','(','No employee work in department ', _deptno, ')') as emply;
			ELSE
				leave l1;
			end if;
		end if;
	end loop l1;
end $
delimiter ;

