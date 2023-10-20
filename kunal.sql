
 drop procedure if exists pro5;
 delimiter $
 create procedure pro5(a VARCHAR(20))
 BEGIN
 set @leng=LENGTH(a);
 set @curr='';
 set @i=1;
 lb:loop
 set @curr=SUBSTR(a,@i,1);

 if @curr='1' THEN
 select "One";
 
 ELSEIF @curr='2' THEN
 select "Two";
 
  ELSEIF @curr='3' THEN
 select "Three";
 
  ELSEIF @curr='4' THEN
 select "Four";
 
  ELSEIF @curr='5' THEN
 select "Five";
 
  ELSEIF @curr='6' THEN
 select "Six";
 
  ELSEIF @curr='7' THEN
 select "Seven";
 
  ELSEIF @curr='8' THEN
 select "Eight";
 
  ELSEIF @curr='9' THEN
 select "Nine";
 
  ELSEIF @curr='0' THEN
 select "Zero";
 
 else select "Incorrect";
 
end if;
if @i>@leng then leave lb; 
end if;
 set @i:=@i+1;
 end loop lb;
 end $
 delimiter ;
