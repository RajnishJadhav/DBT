
 drop PROCEDURE if exists pro2;
 delimiter $
 create PROCEDURE pro2()
 BEGIN
    declare _EMPNO,_MGR,_SAL,_COMM,_DEPTNO,_BONUSID int;
   declare  _ENAME,_JOB,_user,_PWD,_PHONE  varchar(20);
   declare _isActive boolean;
   declare _GENDER char;
   declare _HIREDATE date,
  declare c1 cursor for select * from emp where deptno=10;
  
  open c1;
    l1:LOOP
   fetch c1 into _EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,_user,_PWD,_PHONE,_isActive;
   select _EMPNO,_ENAME,_GENDER,_JOB,_MGR,_HIREDATE,_SAL,_COMM,_DEPTNO,_BONUSID,_user,_PWD,_PHONE,_isActive;
   end loop l1;   
   close c1;
  end $
 delimiter ;
