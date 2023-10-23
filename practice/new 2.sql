drop PROCEDURE if EXISTS sumdigit;
delimiter $
create procedure sumdigit(num int)
BEGIN
DECLARE _sum int;
DECLARE _rem int;
set _sum = 0;
set _rem = 0;
	L1 : LOOP
		set num := num / 10;
		if num != 0 THEN
			set _rem := num % 10;
			set _sum := _sum + _rem;
		else 
			leave L1;
		end if;
	end loop l1;
	select _sum;
end $
delimiter ;