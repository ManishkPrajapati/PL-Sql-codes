drop function if exists Tmarks;
delimiter $
create function Tmarks(_ID int) returns int
deterministic
	BEGIN
			declare x int;
			declare flag bool;
			set x:=0;
			select distinct true into flag from student_qualifications where studentID=_ID;
			
			if flag then
				select sum(marks) into x from student_qualifications where studentId = _ID and name in('BE', '10', '12');
			end if;
			
			return x;
	end $
delimiter ;