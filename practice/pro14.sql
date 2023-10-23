DROP FUNCTION IF EXISTS functionname;
delimiter $$
CREATE FUNCTION functionname() RETURNS INT
DETERMINISTIC
begin
return CONCAT(UPPER(LEFT(x,1)), SUBSTR(LOWER(x), 2 ));
end $$
delimiter ;