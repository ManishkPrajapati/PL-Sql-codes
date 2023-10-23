drop function if exists sumSalary;
delimiter $
create function sumSalary(_deptno int) returns int
deterministic
	BEGIN
		declare _sum int;
		set _sum := (select sum(sal) from emp where deptno = _deptno);
		return _sum;
	end $
delimiter ;