drop trigger if exists updateStu;
delimiter $
create trigger updateStu before delete on student for each row
	BEGIN
		insert into student_log values(old.ID, old.namefirst, old.namelast, old.DOB, old.emailID);
	end$
delimiter ;