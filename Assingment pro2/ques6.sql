drop procedure if exists ques6;
delimiter $
create procedure ques6(str varchar(50))
	begin
		declare i int;
		declare k varchar(5);
		declare v_count int;
		declare d_count int;
		declare s_count int;
		set i := 0;
		set k := "";
		set v_count := 0;
		set d_count := 0;
		set s_count := 0;
		lbl:LOOP
		if i<= length(str) THEN
			set i := i+1;
			set k := substring(str,i,1);
			if k ="a" or k ="e" or k ="i" or k ="o" or k ="u" THEN
				set v_count := v_count+1;
			else if ascii(k) >=(48) and ascii(k) <= (57) THEN
				set d_count := d_count+1;
			else if k = ' ' THEN
				set s_count := s_count+1;
			end if;
			end if;
			end if;
		else
			leave lbl;
		end if;
		end loop lbl;
			select v_count vowels, d_count digits, s_count spaces;
	end $
delimiter ;