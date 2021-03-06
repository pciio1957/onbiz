SELECT * FROM OnProject;
SELECT * FROM Onemp;
SELECT * FROM ONEMP_AUTH;
SELECT * FROM ONEMP_DEPT;
SELECT * FROM ONEMP_POSITION;
SELECT * FROM ONPROJECT_MEMBER;
SELECT * FROM Onordercom;

SELECT * FROM ontask WHERE mem_no = 'mem1007';
SELECT * FROM ONAPPROVAL WHERE mem_no = 'mem1007';

--1. 프로젝트 테이블
DROP TABLE OnProject;
CREATE TABLE onProject (
pro_no varchar2(10) PRIMARY KEY, --프로젝트번호
pro_kind varchar2(50) NOT NULL CHECK(pro_kind IN ('웹','모바일','소프트웨어')), --프로젝트종류
pro_name varchar2(50) NOT null, --프로젝트명
pro_goal varchar2(50) NOT null, --프로젝트목표
pro_content varchar2(300) NOT null, --프로젝트내용
pro_startdte DATE NOT null, --프로젝트 시작일
pro_enddte DATE NOT null, --프로젝트종료일
ordercom_no varchar2(50),   --발주처
pro_state varchar2(50) NOT null, --상태 
pro_regdte DATE NOT null, --등록일
pro_plandoc varchar2(50) NOT null, --계획서 파일명 
pro_budget NUMBER NOT NULL,  --예산 
pro_uptcontent varchar2(100) --수정내용 
);

-- 외래키 설정이 있어서 테이블 삭제가 안됨
-- 데이터 삭제시 delete 구문이용 
DELETE FROM onProject;


--2. 프로젝트 테이블 시퀀스
DROP SEQUENCE  pro_no_sequence;
CREATE SEQUENCE pro_no_sequence
   INCREMENT BY 1   
   START WITH 1001
   MINVALUE 1001
   MAXVALUE 9999999;

  
-- 프로젝트 테이블 값  
-- 첫번째 프로젝트 등록일부분을 8/30 -> 9/25으로 변경할게요! 
/*
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','PMS프로젝트','Spring프레임워크를 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. springFramwork 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2021/10/01','2021/10/31','or1001','진행중','2021/9/25','PMS프로젝트1.hwp',3300000,'');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','쇼핑몰프로젝트','vue 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. vue 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2021/02/01','2021/11/30','or1005','진행중','2021/1/30','PMS프로젝트2.hwp',3300000,'');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','병원예약시스템프로젝트','스위프트 기술 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. 스위프트와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2019/01/01','2019/10/30','or1002','완료','2018/12/30','PMS프로젝트3.hwp',3300000,'멤버수정되었습니다');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','사회보장시스템프로젝트',' vue 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. vue 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2020/01/01','2020/10/30','or1003','완료','2019/12/30','PMS프로젝트4.hwp',3300000,'멤버수정되었습니다');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'소프트웨어','그룹웨어잡스타트프로젝트','Spring프레임워크를 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. springFramwork 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2018/01/01','2019/10/30','or1004','완료','2017/12/30','PMS프로젝트5.hwp',3300000,'멤버수정되었습니다');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'모바일','문화예술관프로젝트','Spring프레임워크를 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. springFramwork 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2019/01/01','2020/5/30','or1006','완료','2018/12/30','PMS프로젝트6.hwp',3300000,'멤버수정되었습니다.');
*/
--변경데이터
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','PMS프로젝트','A','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. springFramwork 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2021/10/01','2021/10/31','or1001','진행중','2021/9/25','PMS프로젝트1.hwp',3300000,'');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','쇼핑몰프로젝트','A','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. vue 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2021/02/01','2021/11/30','or1005','진행중','2021/1/30','PMS프로젝트2.hwp',3300000,'');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','병원예약시스템프로젝트','A스위프트 기술 사용','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. 스위프트와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2019/01/01','2019/10/30','or1002','완료','2018/12/30','PMS프로젝트3.hwp',3300000,'멤버수정되었습니다');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'웹','사회보장시스템프로젝트','B','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. vue 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2020/01/01','2020/10/30','or1003','완료','2019/12/30','PMS프로젝트4.hwp',3300000,'멤버수정되었습니다');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'소프트웨어','그룹웨어잡스타트프로젝트','C','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. springFramwork 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2018/01/01','2019/10/30','or1004','완료','2017/12/30','PMS프로젝트5.hwp',3300000,'멤버수정되었습니다');
INSERT INTO onProject values ('pro'||(pro_no_sequence.nextval),'모바일','문화예술관프로젝트','B','발주처의 요구사항을 토대로 요구사항정의에서 통합테스트까지 진행할 예정입니다. springFramwork 와jsp 를사용하며, 프로젝트 기간은 300일입니다.','2019/01/01','2020/5/30','or1006','완료','2018/12/30','PMS프로젝트6.hwp',3300000,'멤버수정되었습니다.');

select * from Onemp;

--3. 프로젝트 멤버 
  DROP TABLE OnProject_Member;
CREATE TABLE OnProject_Member(
	mem_no varchar2(10) PRIMARY KEY, --멤버번호
	emp_no varchar2(50),--사원번호 
	mem_regdte DATE, -- --멤버등록일 
	mem_witdte DATE, --멤버철수일 
	mem_state varchar2(20), -- 멤버상태 ('활동', '미활동')
	pro_no varchar2(10) --프로젝트번호  
);


DROP SEQUENCE OnProject_Member_sequence;
CREATE SEQUENCE OnProject_Member_sequence
   INCREMENT BY 1   
   START WITH 1001
   MINVALUE 1001
   MAXVALUE 9999999;
 

--프로젝트 멤버 정보 
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1026', '2021/9/26','','활동', 'pro1001');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1012', '2021/9/28','','활동', 'pro1001');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1018', '2021/9/28','','활동', 'pro1001');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1001', '2021/9/28','','활동', 'pro1001'); --pm
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1005', '2021/9/28','2021/9/29','미활동', 'pro1001');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1010', '2021/9/28','2021/9/30','미활동', 'pro1001');

--추가된 프로젝트 멤버정보 
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1001', '2021/9/26','','활동', 'pro1002');--pm
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1005', '2021/9/28','','활동', 'pro1002');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1010', '2021/9/28','','활동', 'pro1002');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1026', '2021/9/28','','활동', 'pro1002');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1012', '2021/9/28','2021/9/29','미활동', 'pro1001');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1018', '2021/9/28','2021/9/30','미활동', 'pro1001');


INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1001', '2021/9/26','','활동', 'pro1003');--pm
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1005', '2021/9/28','','활동', 'pro1003');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1010', '2021/9/28','','활동', 'pro1003');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1022', '2021/9/28','','활동', 'pro1003');

INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1001', '2020/10/26','','활동', 'pro1004');--pm
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1005', '2020/10/28', '','활동','pro1004');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1010', '2020/10/28','','활동', 'pro1004');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1026', '2020/10/28','','활동', 'pro1004');

INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1001', '2019/9/26','','활동', 'pro1005');--pm
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1005', '2019/9/28','','활동', 'pro1005');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1010', '2019/9/28','','활동', 'pro1005');
INSERT INTO OnProject_Member Values('mem'||(OnProject_Member_sequence.nextval),'1022', '2019/9/28','','활동', 'pro1005');

SELECT * FROM OnProject_Member;

 --프로젝트별 멤버 확인용 
   SELECT o.EMP_KORNAME ,od.DEPT_NAME, oa.AUTH_NAME, o.EMP_EMAIL, o.emp_profile, o.emp_no, om.MEM_REGDTE, om.mem_witdte, mem_state 
   FROM ONPROJECT_MEMBER om , ONEMP o , ONEMP_AUTH oa , ONEMP_DEPT od , ONPROJECT o2 
   WHERE o.DEPT_NO = od.DEPT_NO 
   AND o.AUTH_NO = oa.AUTH_NO 
   AND om.EMP_NO =o.EMP_NO 
   AND om.PRO_NO =o2.PRO_NO
   AND o2.PRO_NO = 'pro1003';
--emp_no varchar2(50) CONSTRAINT OnEmp PRIMARY KEY(emp_no), 오류생겼었음 


--4. 프로젝트 파일 시퀀스 
/*
DROP SEQUENCE onproject_file_sequence;
CREATE SEQUENCE onproject_file_sequence
   INCREMENT BY 1   
   START WITH 1001
   MINVALUE 1001
   MAXVALUE 9999999;
*/

DROP SEQUENCE project_file_sequence;  
CREATE SEQUENCE project_file_sequence
   INCREMENT BY 1   
   START WITH 1001
   MINVALUE 1001
   MAXVALUE 9999999;
  
SELECT project_file_sequence.nextval FROM dual;
SELECT * FROM onProject_file;
   
--프로젝트 파일 테이블 
create table onProject_file (
profile_no varchar2(10) primary key, --파일번호
profile_name varchar2(30), --파일명
profile_regdte Date, --등록일
pro_no varchar2(10) --프로젝트번호 
);