DROP PROCEDURE if EXISTS pro4;
delimiter $
create PROCEDURE pro4(y int)
BEGIN
	DECLARE x int;
	set x := 0;
	set @z := "";

		lot:LOOP
		set x:= x+1;
		
		if x<=y THEN
		select x;
		set @z := concat (@z," ", x);
		else
		leave lot;
		end if;
		end loop lot;
		

end $
delimiter ;