drop procedure if exists ques5;
delimiter $
	create procedure ques5(str varchar(30))
		begin
			declare i int;
			declare k varchar(50);
			declare uu_case varchar(50);
			declare ll_case varchar(50);
			set i := 0;
			set uu_case := "";
			set ll_case := "";
			
			lbl:loop
			
			if i <= length(str) then
				set i := i+1;
				set k := substring(str,i,1);
				if ascii(k) >= (97) and ascii(k) <= (122) then
					set uu_case := concat(uu_case,k);
				ELSE if ascii(k) >=(65) and ascii(k) <=(90) then
					set ll_case := concat(ll_case,k);
				ELSE
					leave lbl;
				end if;
				end if;
			end if;
			end loop lbl;
			select ll_case as L_umbers;
			select uu_case as U_characters;
		end $
delimiter ;