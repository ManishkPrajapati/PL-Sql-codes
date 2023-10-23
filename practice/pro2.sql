drop procedure if exists pro2;
delimiter $
create procedure pro2(x int, y int, out z int)
begin
	set z:= x+y;
end $
delimiter ;