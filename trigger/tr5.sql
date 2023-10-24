drop trigger if exists Ntday;
delimiter $
create trigger Ntday before insert on student for each row
	begin
		if dayname(now()) = 'Tuesday' then
		signal sqlstate '42000' set message_text = 'Invalid entry';
		end if;
	end $
delimiter ;