create table member_tbl_0830(
memno char(4) not null,
mname varchar2(20) not null,
maddress varchar2(50) not null,
joindate date,
gender char(1),
tel varchar2(15),
primary key(memno)
);

select * from member_tbl_0830;

insert into member_tbl_0830 values('1001','김회원','경북 경산시 중방동','19/01/01','M','010-1234-1001');
insert into member_tbl_0830 values('1002','이회원','경북 경산시 중산동','19/02/01','F','010-1234-1002');
insert into member_tbl_0830 values('1003','박회원','경북 경산시 옥산동','19/03/01','M','010-1234-1003');
insert into member_tbl_0830 values('1004','최회원','경북 경산시 삼북동','19/04/01','M','010-1234-1004');
insert into member_tbl_0830 values('1005','조회원','경북 경산시 중앙동','19/05/01','F','010-1234-1005');
insert into member_tbl_0830 values('1006','전회원','경북 경산시 중방동','19/06/01','M','010-1234-1006');
insert into member_tbl_0830 values('1007','남회원','경북 경산시 삼북동','19/07/01','F','010-1234-1007');
insert into member_tbl_0830 values('1008','여회원','경북 경산시 중산동','19/08/01','M','010-1234-1008');
insert into member_tbl_0830 values('1009','정회원','경북 경산시 옥산동','19/09/01','F','010-1234-1009');

create table apptrainer_tbl_0830(
tno char(2) not null,
memno char(4) not null,
mname varchar2(20) not null,
ttime varchar2(30) not null,
primary key(tno,memno)
);

drop table apptrainer_tbl_0830;

insert into apptrainer_tbl_0830 values('01','1004','최회원','09:00~12:00');
insert into apptrainer_tbl_0830 values('01','1007','남회원','09:00~12:00');
insert into apptrainer_tbl_0830 values('02','1002','이회원','12:00~15:00');
insert into apptrainer_tbl_0830 values('02','1005','조회원','12:00~15:00');
insert into apptrainer_tbl_0830 values('03','1003','박회원','15:00~18:00');
insert into apptrainer_tbl_0830 values('03','1006','전회원','15:00~18:00');
insert into apptrainer_tbl_0830 values('04','1008','여회원','18:00~21:00');
insert into apptrainer_tbl_0830 values('04','1009','정회원','18:00~21:00');
insert into apptrainer_tbl_0830 values('04','1001','김회원','18:00~21:00');

select * from apptrainer_tbl_0830;

update apptrainer_tbl_0830 set tno='가나다',ttime='09:00~12:00' where mname='가나다';

create table trainer_tbl_0830(
tno char(2) not null,
tname varchar2(20) not null,
hiredate date not null,
ttime varchar2(30) not null,
primary key(tno)
);

drop table trainer_tbl_0830;

insert into trainer_tbl_0830 values('01','김헬스','18/01/01','09:00~12:00');
insert into trainer_tbl_0830 values('02','이헬스','18/02/01','12:00~15:00');
insert into trainer_tbl_0830 values('03','박헬스','18/03/01','15:00~18:00');
insert into trainer_tbl_0830 values('04','최헬스','18/04/01','18:00~21:00');

select * from trainer_tbl_0830;


select max(memno)+1 from member_tbl_0830;

select to_char(sysdate,'yy-mm-dd') from dual;

select * from member_tbl_0830;

delete from member_tbl_0830
where memno='1010';

select memno, mname, maddress,
to_char(joindate,'yyyy.mm.dd.'),
decode(gender,'M','남','F','여'),tel
from member_tbl_0830;

select b.tno,b.tname,b.ttime,
count(a.tno)
from apptrainer_tbl_0830 a, trainer_tbl_0830 b
where b.tno=a.tno
group by b.tno,b.tname,b.ttime
order by b.tno;