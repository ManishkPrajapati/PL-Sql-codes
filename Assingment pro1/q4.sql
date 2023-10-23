drop procedure if exists addStudent;
delimiter $
	create procedure addStudent(id int, namefirst varchar(50), namelast varchar(50), dob date, emailid varchar(50),
	sid int, _number LONG, isactive BOOLEAN, aid int, 	address varchar(50))
		begin
			insert into student values( id,namefirst, namelast, dob, emailid);
			insert into student_phone values(sid, id,_number, isactive);
			insert into student_address values(aid,id,address);
		end $
delimiter ;