drop procedure if exists ques12;
delimiter $
create procedure ques12(x int)
	begin
		declare flag bool;
			select true into flag from customers where cnum = x;
			if flag then 
				select o.* from orders o , customers c  where c.cnum = x and c.cnum = o.cnum;
			ELSE
				select "Record not found";
			end if;
	end $
delimiter ;