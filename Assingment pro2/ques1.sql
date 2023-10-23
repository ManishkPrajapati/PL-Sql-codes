drop procedure if exists string1;
delimiter $
create procedure string1(Ip varchar(50))
	begin
		select left(Ip,1);
		select substring(Ip,2,1);
		select right(Ip,1);
	end$
delimiter ;