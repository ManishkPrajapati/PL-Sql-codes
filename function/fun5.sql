drop function if exists fun5;
delimiter $
create function fun5() returns int
deterministic
	BEGIN
		declare random int;
		set random := (select round(rand()*(1000000-100000+1)));
		return random;
	end $
delimiter ;