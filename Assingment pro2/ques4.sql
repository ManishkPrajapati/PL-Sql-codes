drop procedure if exists string3;
delimiter $
create procedure string3()
	begin
		select concat(left(ename, 1),"(",right(ename,length(ename)-1),") ","is ", job) as employee from emp;
	end$
delimiter ;