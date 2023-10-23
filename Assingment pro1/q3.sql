drop procedure if exists getQualification;
delimiter %
create procedure getQualification(_studentID int)
	BEGIN
	declare flag bool;
	select true into flag from student where id = _studentID;
		if flag THEN
			select s.*, sq.* from student s , student_qualifications sq where s.id = _studentID and sq.studentID = _studentID ;
			ELSE
			select "student not found";
		end if;
	end %
delimiter ;