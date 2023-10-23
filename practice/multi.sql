drop procedure if exists prob;
delimiter $
create procedure prob(x int , y int)
    begin
        select x*y as "product";
    end$
    delimiter ;