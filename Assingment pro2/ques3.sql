drop procedure if exists ques3;
delimiter $
	create procedure ques3(str varchar(30))
		begin
			declare i int;
			declare k varchar(50);
			declare ch varchar(50);
			declare num varchar(50);
			set i := 0;
			set ch := "";
			set num := "";
			
			lbl:loop
			
			if i <= length(str) then
			set i := i+1;
				set k := substring(str,i,1);
				if ascii(k) >= (97) and ascii(k) <= (122) then
					set ch := concat(ch,k);
				ELSE if ascii(k) >=(49) and ascii(k) <=(57) then
					set num := concat(num,k);
				ELSE
					leave lbl;
				end if;
				end if;
				
			end if;
			end loop lbl;
			select num as numbers;
			select ch as characters;
		end $
delimiter ;