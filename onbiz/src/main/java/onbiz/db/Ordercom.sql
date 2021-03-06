-- 발주처 : OnorderCom
-- 발주처번호, 발주처종류, 발주처명, 계약체결일

--1. 발주처 
DROP TABLE orderCom;
create table orderCom(
	ordercom_no varchar2(10) primary key,  --발주처번호 
	ordercom_kind varchar2(20) NOT NULL CHECK(ordercom_kind IN ('금융기업','공공기업','판매업','숙박업','기타')), --발주처종류
	ordercom_name varchar2(50), --발주처명
	ordercom_regdte DATE --계약체결일
);


SELECT * FROM ordercom;

--2. 발주처 번호 (시퀀스)
DROP SEQUENCE ordercom_no_sequence; 
CREATE SEQUENCE ordercom_no_sequence
   INCREMENT BY 1   
   START WITH 1001
   MINVALUE 1001
   MAXVALUE 9999999;
   
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'금융기업','SW F&C','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'기타','건국대학교병원','2016/01/02');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'공공기업','사회보장정보원','2010/01/03');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'공공기업','jobstart','2016/04/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'판매업','Biz쇼핑몰','2017/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'공공기업','경기문화예술관','2013/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'공공기업','국민연금공단','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'공공기업','고용복지공단','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'기타','연세대세브란스','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'판매업','11번가','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'판매업','삼성sdi','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'금융기업','우리은행','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'금융기업','기업은행','2016/01/01');
insert into orderCom values('or'||(ordercom_no_sequence.nextval),'금융기업','국민은행','2016/01/01');



	select * from ordercom
	where ordercom_name like ''  
	and ordercom_kind like '';
	