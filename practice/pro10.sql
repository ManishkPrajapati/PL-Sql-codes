drop procedure if exists pro10;
delimiter $
create procedure pro10(_deptno int)
BEGIN
	declare flag bool;
	select true into flag from dept where deptno = _deptno;
	if flag THEN
	select * from dept where deptno = _deptno;
	select "value found";
	ELSE
	select "not found";
	end if;
end $
delimiter ;