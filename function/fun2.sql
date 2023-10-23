drop function if exists autoNumber;
delimiter $
create function autoNumber(namefirst varchar(100), namelast varchar(100), _DOB date, _emailID varchar(200)) returns int
deterministic
	BEGIN
		declare x int;
		insert into STUDENT_NEW(namefirst, namelast, DOB, emailID) values(namefirst, namelast, _DOB, _emailID);
		set x := (select MAX(studentID) from STUDENT_NEW);
		return x;
	end $
delimiter ;