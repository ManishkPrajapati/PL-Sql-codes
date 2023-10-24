drop trigger if exists insertDuplicate;
delimiter $
create trigger insertDuplicate after insert on student for each ROW
	BEGIN
		insert into student_log values(new.ID, new.namefirst, new.namelast, new.DOB, new.emailID);
	end $
delimiter ;