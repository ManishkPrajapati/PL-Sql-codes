drop function if exists checkID;
delimiter $
create function checkID(_emailID varchar(100)) returns varchar(500)
deterministic
	BEGIN
		declare flag bool;
		declare _user varchar(100);
		declare passwrd varchar(100);
		select true into flag from LOGIN where email_ID = _emailID;
			if flag THEN
				set _user := (select username from LOGIN where email_ID = _emailID);
				set passwrd := (select password from LOGIN where email_ID = _emailID);
				return (concat(_user," ",passwrd));
			ELSE
				return "Employee not exists";
			end if;
	end $
delimiter ;