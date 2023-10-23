drop procedure if exists ques16;
delimiter $
create procedure ques16(date1 date, _weekday varchar(100))
	begin
		lbl:loop
		if dayname(date1) = _weekday then
			select date1 as Weekends;
			leave lbl;
		else
			set date1 := date1 + interval 1 day;
		end if;
	end loop lbl;
	end $
delimiter ;