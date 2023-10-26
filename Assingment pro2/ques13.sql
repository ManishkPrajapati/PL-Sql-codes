drop procedure if exists ques13;
delimiter $
create procedure ques13(num int)
	begin
		declare x int;
		declare word varchar(2000);
		declare rev int;
		set x :=0;
		set rev := (select fun_rev(num));
		set word :="";
		
		lbl: loop
			if rev != 0 then
				set x := rev%10;
				set rev := rev div 10;
				if x = 0 then
					set word := concat("zero"," ",word);
				else if x = 1 then
					set word := concat("one"," ",word);
				else if x = 2 then
					set word := concat("two"," ",word);
				else if x = 3 then
					set word := concat("three"," ",word);
				else if x = 4 then
					set word := concat("four"," ",word);
				else if x = 5 then
					set word := concat("five"," ",word);
				else if x = 6 then
					set word := concat("six"," ",word);
				else if x = 7 then
					set word := concat("seven"," ",word);
				else if x = 8 then
					set word := concat("eight"," ",word);
				else if x = 9 then
					set word := concat("nine"," ",word);
				end if;
				end if;
				end if;
				end if;
				end if;
				end if;
				end if;
				end if;
				end if;
				end if;
			ELSE
			leave lbl;
		end if;
		end loop lbl;
			SELECT word as numbers_in_words;
	end $
delimiter ;

