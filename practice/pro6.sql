drop procedure if exists pro6;
delimiter $
create procedure pro6(x int, y int, out z1 int, out z2 int)
BEGIN
	set z1:= x+y;
	set z2:= x-y;
end $
delimiter ;