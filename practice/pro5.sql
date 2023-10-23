drop procedure if exists pro5;
delimiter $
create procedure pro5(x int , y int, z int)
BEGIN
declare exit handler for 1062 SELECT "invalid" as "error";
	insert into d values(x,y,z);
end $
delimiter ;