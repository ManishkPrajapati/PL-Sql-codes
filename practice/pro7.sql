drop procedure if exists pro7;
delimiter $
create procedure pro7(x int)
begin
	if x between 1 and 100 then 
		select "good";
		else
		select "bad";
		end if;
end $
delimiter ;