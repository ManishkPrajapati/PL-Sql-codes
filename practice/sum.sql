drop procedure if exists pro2;
delimiter $
create procedure pro2(x int , y int)
	begin
		select x+y as "sum";
	end $
	delimiter ;