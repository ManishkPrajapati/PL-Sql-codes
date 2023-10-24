drop trigger if exists patient;
delimiter $
create trigger patient before insert on patientP for each ROW
	begin
		declare flag bool;
		select true into flag from patientD where pid != new.pid;
		if flag then
		signal sqlstate '42000' set message_text = "Person not eligible";
		end if;
	end $
delimiter ;