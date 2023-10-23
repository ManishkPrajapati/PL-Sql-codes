drop procedure if exists ques9;
delimiter $
create procedure ques9()
	begin
		declare x int;
		declare _ename varchar(50);
		declare _sal int;
		declare c1 cursor for select * from( select dense_rank() over(order by sal desc) R1 , ename, sal from emp)e where R1<=5;
		open c1;
		l1:loop
			fetch c1 into x, _ename, _sal;
			select x, _ename, _sal;
		end loop l1;
		close c1;
	end $
delimiter ;