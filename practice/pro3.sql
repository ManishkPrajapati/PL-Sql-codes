drop PROCEDURE if exists pro3;
delimiter $
create procedure pro3(x int, y int)
BEGIN
set x:= x+1;
set y:= y+1;
	if (x=1 and y=1) THEN
		select x+y;
	else if (x>10 and y>10) THEN
		select x-y;
	else if (x<10 and y<10) THEN
		select 'invalid';
	end if;
	end if;
	end if;
end $
delimiter ;