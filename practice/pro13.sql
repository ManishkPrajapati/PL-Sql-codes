drop function if exists pro13;
delimiter $
create function pro13(x int, y int) returns int 
deterministic
begin
	declare z int;
	set z:= ifnull(x,0)+y;
	return z;
end $
delimiter ;