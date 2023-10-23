 drop PROCEDURE IF EXISTS alphanum;
delimiter $
CREATE PROCEDURE alphanum(id int)
BEGIN
	
			select(select sum(marks) from student_qualifications where name in('BE','10','12') and studentid = id);
			
end $
delimiter ; 