drop procedure if exists string4;
delimiter $
create procedure string4(_id int, sid int, name varchar(50), college varchar(50),university varchar(50), marks varchar(10), _year int, out msg varchar(50))
	begin
		declare flag bool;
		select true into flag from student where id = _id;
		if flag THEN
			insert into student_qualifications values(sid, _id, name, college, university, marks, _year);
			set msg := "record inserted";
		ELSE
			select "Student not found";
		end if;
	end $
delimiter ;