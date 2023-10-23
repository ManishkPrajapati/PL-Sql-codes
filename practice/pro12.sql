drop function if exists pro12;
delimiter $
create function pro12(x int) returns INTEGER
deterministic
begin
	set @z:= call pro10(x);
	
	return @z;
end $
delimiter ;