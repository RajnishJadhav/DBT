drop procedure if exists pro1;
delimiter $
create PROCEDURE pro1()
BEGIN
select "Hello World" as "Message";
end $
delimiter ;
