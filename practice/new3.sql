drop function if exists firstNumber;
delimiter $
create function firstNumber(x bigint) returns varchar(20)
deterministic
begin
	if x = 1 then
		return "one";
	elseif x = 2 then
		return "two";
	elseif x = 3 then
		return "three";
	elseif x = 4 then
		return "four";
	elseif x = 5 then
		return "five";
	elseif x = 6 then
		return "six";
	elseif x = 7 then
		return "seven";
	elseif x = 8 then
		return "eight";
	elseif x = 9 then
		return "nine";
	elseif x = 0 then
		return " ";
    	end if;
end $
delimiter ;

drop procedure if exists pro14;
delimiter $
create procedure pro14(number1 int)
begin
	declare inWords varchar(50);
    declare num int;
    declare temp int ;
    declare tensPlace int;
    set inWords := " ";
    set num := 0;
    loop1:loop
		if number1 > 0 then
			set temp := number1 % 10;
            set number1 := number1 div 10;
            set num := num + temp;
		else 
			leave loop1;
		end if;
    end loop;
	set tensPlace := num div 10;
	if tensPlace = 2 then
		set inWords := concat(inWords,"twenty");
	elseif tensPlace = 3 then
		set inWords := concat(inWords,"thirty");
	elseif tensPlace = 4 then
		set inWords := concat(inWords,"forty");
	elseif tensPlace = 5 then
		set inWords := concat(inWords,"fifty");
	elseif tensPlace = 6 then
		set inWords := concat(inWords,"sixty");
	elseif tensPlace = 7 then
		set inWords := concat(inWords,"seventy");
	elseif tensPlace = 8 then
		set inWords := concat(inWords,"eighty");
	elseif tensPlace = 9 then
		set inWords := concat(inWords,"ninty");
	else
		set inWords := concat(inWords," ");
	end if ;
	if tensPlace = 1 then
		if num = 10 then
			set inWords := concat(inWords,"ten");
		elseif num = 11 then
			set inWords := concat(inWords,"eleven");
		elseif num = 12 then
			set inWords := concat(inWords,"twelve");
		elseif num = 13 then
			set inWords := concat(inWords,"thirteen");
		elseif num = 14 then
			set inWords := concat(inWords,"forteen");
		elseif num = 15 then
			set inWords := concat(inWords,"fifteen");
		elseif num = 16 then
			set inWords := concat(inWords,"sixteen");
		elseif num = 17 then
			set inWords := concat(inWords,"seventeen");
		elseif num = 18 then
			set inWords := concat(inWords,"eighteen");
		elseif num = 19 then
			set inWords := concat(inWords,"nineteen");
		end if;
	end if;
	if tensplace != 1 then
		set inWords := concat(inWords," ",firstNumber(num % 10));
	end if;
    select inWords;
end $
delimiter ;
