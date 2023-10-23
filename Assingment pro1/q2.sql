drop procedure if exists checkUser;
delimiter #
create procedure checkUser(_emailID varchar(50))
	BEGIN
		declare flag bool;
		select true into flag from login where email_ID = _emailID;
		if flag THEN
			select username, password from login;
			ELSE
			insert into log(curr_date, curr_time, message) values(current_time(), current_time(), user());	
		end if;
	end #
delimiter ;
