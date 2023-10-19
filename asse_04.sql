drop procedure if exists addStudent;
delimiter $$
create procedure addStudent()
BEGIN
	declare flag BOOLEAN;
	
	declare exit handler for 1050 set flag= true;
	create table ta3(student varchar(20));
	/*insert into login values(_),insert into login values(_),insert into login values(_)
	
	insert into login values(_username,_password,_emailid);
	*/
end $$
delimiter ;