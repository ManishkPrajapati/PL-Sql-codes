drop procedure if exists ques7;
delimiter $
	create procedure ques7(str varchar(30))
		begin
			declare i int;
			declare k varchar(50);
			declare characters varchar(50);
			set i := 0;
			set characters := "";			
			lbl:loop
			if i <= length(str) then
				set i := i+1;
				set k := substring(str,i,1);
				if ascii(k) >= (97) and ascii(k) <= (122) then
					set characters := concat(characters,k);
				ELSE if ascii(k) >=(65) and ascii(k) <=(90) then
					set characters := concat(characters,k);
				end if;
				end if;
			ELSE
				leave lbl;
			end if;
			end loop lbl;
			select characters as c;
		end $
delimiter ;
