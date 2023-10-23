 drop PROCEDURE IF EXISTS alphanum;
delimiter $
CREATE PROCEDURE alphanum(s varchar(50))
BEGIN
	DECLARE ch varchar(1);
	DECLARE count int;
	DECLARE _alpha varchar(50);
	DECLARE _num varchar(50);
	set count :=1;
	set _alpha := "";
	set _num := "";
	
	l1:LOOP
		IF count <= length(s) THEN
			set ch :=substring(s,count,1);
			set count := count+1;
			IF ASCII(ch) >= (48) AND ASCII(ch) <= (57) THEN
				set _num :=concat(_num,ch);
			else IF ASCII(ch) >= (65) and ASCII(ch) <= (90) THEN
				set _alpha := concat(_alpha,ch);
			end if;
			end if;
		ELSE 
			leave l1;
		end if;
	end LOOP l1;
	select _alpha,_num;
end $
delimiter ; 