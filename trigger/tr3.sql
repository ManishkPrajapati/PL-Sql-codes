drop trigger if exists updateStu;
delimiter $
create trigger updateStu after update on student for each row
	BEGIN
		insert into student_log values(new.ID, new.namefirst, new.namelast, new.DOB, new.emailID);
	end$
delimiter ;