drop procedure if exists ques15;
delimiter $
create procedure ques15(date1 date, date2 date)
	begin
		declare _count int;
		set _count := 0;
		
	lbl : loop	
		if date1 <= date2 then
			if dayname(date1) = 'Sunday' then
				set _count := _count + 1;
				set date1 := date1 + interval 1 day;
			else
				set date1 := date1 + interval 1 day;
			end if;
		else
			leave lbl;
		end if;
	end loop lbl;
		select concat(_count," - Sundays") as Ndays;
	end $
delimiter ;