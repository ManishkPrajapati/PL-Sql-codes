drop procedure if exists string2;
delimiter $
create procedure string2(Instring varchar(50))
	begin
		declare x int;
		declare y int;
			set y:=1;
			set x := length(Instring);
			set @z := substr(Instring,1,1);
		lbl:loop
			set y:= y+1;
				if y>x then
				leave lbl;
				end if;
			set @z:= concat(@z,',',substr(Instring,y,1));
		end loop lbl;
	end $
delimiter ;