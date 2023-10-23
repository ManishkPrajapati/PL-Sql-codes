drop procedure if exists pro9;
delimiter $
create procedure pro9(p1 int, p2 varchar(20),p3 varchar(20))
BEGIN
	 if p3 = "pune" THEN
		insert into d values(p1, p2, p3);
		select * from d;
		ELSE
		select "record invalid";
	end if;
end $
delimiter ;