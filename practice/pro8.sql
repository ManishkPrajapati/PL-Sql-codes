drop procedure if exists pro8;
delimiter $
create procedure pro8(x int)
BEGIN
	declare y int;
	set y:=0;
	set @z:="";
	lot:LOOP
		set y:=y+1;
		if y<=10 THEN
		set @z:=concat(@z," ",x*y);
		ELSE
		leave lot;
		end if;
	end loop lot;
	select @z;
end $
delimiter ;