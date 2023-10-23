drop procedure if exists addUser;
delimiter $
create procedure addUser(username varchar(50), password varchar (50), email varchar(50))
	begin
		create table login(username varchar(50), password varchar(50), email_ID varchar(50));
		insert into login values(username, password, email);
	end $
delimiter ;