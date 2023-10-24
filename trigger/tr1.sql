drop trigger if exists insertStudent;
delimiter $
create trigger insertStudent after insert on std1 for each ROW
	BEGIN
		insert into log(curr_date, curr_time, message) values(CURRENT_DATE(), CURRENT_TIME(), "record inserted");
	end $
delimiter ;