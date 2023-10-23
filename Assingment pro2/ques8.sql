drop procedure if EXISTS ques8;
delimiter $
create procedure ques8()
	BEGIN
		declare x int;
		set x := 0;
		create table q(id int, message varchar(20));
		lbl:loop
			set x := x+1;
			if x<=10 then
				if x%2=1 then
					insert into q VALUES(x,"i is odd");
				else
					insert into q VALUES(x,"i is even");
				end if;
			else
				leave lbl;
		end if;
		end loop lbl;
	end $
delimiter ;