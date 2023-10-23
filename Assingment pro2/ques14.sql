drop procedure if exists ques14;
delimiter $
create procedure ques14(num int)
	begin
		declare x int;
		declare word varchar(2000);
		declare _sum int;
		declare ones int;
		declare place int;
		set _sum := 0;
		set x :=0;
		set word := "";
		
			lbl: loop
			if num != 0 then
				set x := num%10;
				set _sum := _sum + x;
				set num := num div 10;
			else 
			leave lbl;
			end if;
		end loop lbl;
		select _sum;
				
				set place := _sum div 10;
				
				if place = 2 then
						set word := concat(word,"twenty");
					elseif place = 3 then
						set word := concat(word,"thirty");
					elseif place = 4 then
						set word := concat(word,"forty");
					elseif place = 5 then
						set word := concat(word,"fifty");
					elseif place = 6 then
						set word := concat(word,"sixty");
					elseif place = 7 then
						set word := concat(word,"seventy");
					elseif place = 8 then
						set word := concat(word,"eighty");
					elseif place = 9 then
						set word := concat(word,"ninety");
				end if;
				
			 if place = 1 then
						if _sum = 10 then 
							set word := concat(word,"ten");
						elseif _sum = 11 then
							set word := concat(word,"eleven");
						elseif _sum = 12 then
							set word := concat(word,"twelve");
						elseif _sum = 13 then
							set word := concat(word,"thirteen");
						elseif _sum = 14 then
							set word := concat(word,"fourteen");
						elseif _sum = 15 then
							set word := concat(word,"fifteen");
						elseif _sum = 16 then
							set word := concat(word,"sixteen");
						elseif _sum = 17 then
							set word := concat(word,"seventeen");
						elseif _sum = 18 then
							set word := concat(word,"eighteen");
						elseif _sum = 19 then
							set word := concat(word,"nineteen");
						end if;	
					end if;
						
					
				
				set ones := _sum % 10;
				if place != 1 then
					if ones = 1 then
						set word := concat(word," ","one");
					elseif ones = 2 then
						set word := concat(word," ","two");
					elseif ones = 3 then
						set word := concat(word," ","three");
					elseif ones = 4 then
						set word := concat(word," ","four");
					elseif ones = 5 then
						set word := concat(word," ","five");
					elseif ones = 6 then
						set word := concat(word," ","six");
					elseif ones = 7 then
						set word := concat(word," ","seven");
					elseif ones = 8 then
						set word := concat(word," ","eight");
					elseif ones = 9 then
						set word := concat(word," ","nine");
					end if;
				end if;
				
		select word;
	end $
delimiter ;