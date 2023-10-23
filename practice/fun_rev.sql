drop function if exists fun_rev;
delimiter $
create function fun_rev(num int) returns int
deterministic
BEGIN
	declare x int;
	declare rev int;
	set x := 0;
	set rev := 0;
			lbl: loop
			if num != 0 then
				set x := num%10;
				set rev := rev*10 + x;
				set num := num div 10;
			else 
			leave lbl;
			end if;
		end loop lbl;
	return rev;
end $
delimiter ;