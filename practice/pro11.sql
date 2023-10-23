drop procedure if exists pro11;
delimiter $
create procedure pro11(_tname varchar(20), c1 varchar(3), c1 varchar(3))
begin
	set @z := concat("create table",_tname,"(", c1," int ,", c2," int)");
	prepare x from @z;
	execute x;
end $
delimiter ;