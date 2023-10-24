drop trigger if exists vote;
delimiter $
create trigger vote before insert on R for each row
	begin
		if new.age < 18 then
		signal sqlstate '42000' set message_text = "Person not eligible";
		end if;
	end $
delimiter ;