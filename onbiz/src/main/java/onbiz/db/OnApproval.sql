-- 결재 테이블 삭제
DROP TABLE OnApproval;
-- 결재 테이블 생성
CREATE TABLE OnApproval (
	app_no VARCHAR2(10) PRIMARY KEY, -- 결재번호 (pk) 
	app_regdte VARCHAR2(20), -- 결재 등록일
	app_state VARCHAR2(20) CHECK (app_state IN ('승인대기', '승인', '반려')), -- 결재 승인 상태
	app_deadline VARCHAR2(20), -- 승인 만료일
	app_appdte VARCHAR2(20), -- 결재 승인일
	app_content VARCHAR2(300), -- 결재 요청내용
	app_comment VARCHAR2(300), -- 결재 답변
	mem_no VARCHAR2(10), -- 결재 승인자 (프로젝트 맴버)
	task_no NUMBER, -- 작업번호 (작업)
	note_no VARCHAR2(10) -- 회의록번호 (회의록)
);

-- 결재번호 시퀀스 삭제
DROP SEQUENCE OnApproval_seq;
-- 결재번호 시퀀스 생성
CREATE SEQUENCE OnApproval_seq
	INCREMENT BY 1
	START WITH 1001
	MINVALUE 1001
	MAXVALUE 9999999;

INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-01', '승인대기', '2021-09-08', NULL, '결재요청 부탁드립니다!', NULL, 'mem1001', 1, 'mtn1');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-02', '승인대기', '2021-09-09', NULL, '결재 검토 부탁드립니다!', NULL, 'mem1001', 2, 'mtn2');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-03', '승인대기', '2021-09-10', NULL, '요청합니다', NULL, 'mem1004', 3, 'mtn3');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-04', '승인대기', '2021-09-11', NULL, '요청합니다', NULL, 'mem1004', 4, 'mtn4');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-05', '승인대기', '2021-09-12', NULL, '결재 부탁드리겠습니다!', NULL, 'mem1001', 5, 'mtn5');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-06', '승인대기', '2021-09-13', NULL, '요청드려요~', NULL, 'mem1001', 6, 'mtn6');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-07', '승인대기', '2021-09-14', NULL, '결재 요청합니다', NULL, 'mem1004', 7, 'mtn7');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-08', '승인대기', '2021-09-15', NULL, '요청합니다', NULL, 'mem1004', 8, 'mtn8');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-09', '승인대기', '2021-09-16', NULL, '요청합니다!', NULL, 'mem1001', 9, 'mtn9');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-10', '승인대기', '2021-09-17', NULL, '결재 부탁드려요!', NULL, 'mem1001', 10, 'mtn10');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-11', '승인대기', '2021-09-18', NULL, '요청해주세요~', NULL, 'mem1004', 11, 'mtn11');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-12', '승인대기', '2021-09-19', NULL, '결재 요청드립니다.', NULL, 'mem1001', 12, 'mtn12');
INSERT INTO OnApproval VALUES ('app'||(OnApproval_seq.nextval), '2021-09-13', '승인대기', '2021-09-20', NULL, '결재 부탁드립니다!', NULL, 'mem1004', 13, 'mtn13');

SELECT * FROM OnApproval;


/*
INSERT INTO OnOutput values('opt'||lpad(OnOutput_seq.nextval, 7, 0), '산출물', '요구사항 정의서', 'xlsx', 1, 'mtn1');
INSERT INTO OnOutput values('opt'||lpad(OnOutput_seq.nextval, 7, 0), '산출물', 'UI화면설계서', 'pptx', 2, 'mtn2');
INSERT INTO OnOutput values('opt'||lpad(OnOutput_seq.nextval, 7, 0), '산출물', '업무플로우 설계서', 'hwp', 3, 'mtn3');
INSERT INTO OnOutput values('opt'||lpad(OnOutput_seq.nextval, 7, 0), '산출물', 'DB구현 소개서', 'sql', 4, 'mtn2');
INSERT INTO OnOutput values('opt'||lpad(OnOutput_seq.nextval, 7, 0), '산출물', '화면구현 소개서', 'pptx', 5, 'mtn1');
SELECT * FROM OnOutput;
*/

--==================================================================================================================================
/*
	# 결재 관리 Process
		1. '결재 현황'은 '승인대기' 상태의 결재목록만을 출력
		2. 해당 목록을 더블클릭하면 Modal창으로 '결재 조치'를 진행할 수 있는 정보 출력
			- 결재번호, 프로젝트명, 작업명, 작업내용, 결재요청내용
		2-1. '결재 조치' 입력 폼
			- 결재번호(seq), 결재등록일, 결재만료일, 결재승인일, 결재답변, 결재 승인상태, 맴버번호
			- 결재만료일은 7일후 만료로 설정
		3. 결재 조치 (승인, 반려)를 진행하게 되면 '결재 조치'에서 확인 가능
 */
-- 0. 프로젝트 조회
SELECT DISTINCT op.pro_name, op.pro_no
FROM ontask ot, onproject_member pm, onproject op
WHERE ot.mem_no = pm.mem_no
AND pm.pro_no = op.pro_no
AND pm.emp_no = '1001';

-- 1. '승인대기' 상태인 결재 현황 및 프로젝트 검색
SELECT oa.APP_NO, op.PRO_NAME, ot.TASK_NAME, ot.TASK_CONTENT, oa.APP_REGDTE, oa.APP_DEADLINE, oa.APP_APPDTE, oa.APP_STATE
FROM OnProject op, OnTask ot, OnApproval oa, OnProject_Member pm
WHERE oa.TASK_NO = ot.TASK_NO
AND op.PRO_NO = pm.PRO_NO
AND oa.MEM_NO = pm.MEM_NO
AND ot.TASK_NAME LIKE '%'||''||'%'
ORDER BY ot.task_no DESC;

-- 조인 추가 (오류 발생시 결재 목록은 해당 쿼리로 추가해볼 예정)
SELECT oa.APP_NO, op.PRO_NAME, ot.TASK_NAME, ot.TASK_CONTENT, oa.APP_REGDTE, oa.APP_DEADLINE, oa.APP_APPDTE, oa.APP_STATE
FROM OnProject op, OnTask ot, OnApproval oa, OnProject_Member pm
WHERE oa.TASK_NO = ot.TASK_NO
AND op.PRO_NO = pm.PRO_NO
AND oa.MEM_NO = pm.MEM_NO
AND ot.MEM_NO = pm.MEM_NO
AND ot.TASK_NAME LIKE '%'||''||'%'
ORDER BY oa.APP_NO DESC;

-- 2. '승인대기' 상태인 결재 현황 화면에서의 결재 조치에 대한 요청내용 조회 (오류가 있으면 상세정보는 해당 쿼리로 추가해볼 예정)
SELECT oa.APP_NO, ot.TASK_NO, op.PRO_NAME, ot.TASK_NAME, ot.TASK_CONTENT, oa.APP_REGDTE, oa.APP_DEADLINE, oa.APP_APPDTE, oa.APP_CONTENT, oa.APP_COMMENT, oo.OPT_NAME, ot.TASK_STATE, oa.APP_STATE
FROM OnProject op, OnTask ot, OnApproval oa, OnProject_Member pm, OnOutput oo
WHERE oa.TASK_NO = ot.TASK_NO
AND oo.TASK_NO = ot.TASK_NO
AND op.PRO_NO = pm.PRO_NO
AND oa.MEM_NO = pm.MEM_NO
AND ot.TASK_NO = '01'
AND oa.APP_NO = 'app1001';

-- 2-1. '승인대기' 상태인 결재 현황 화면에서의 결재 조치 등록 폼 (승인일, 결재답변, 결재 승인상태, 결재번호)
UPDATE OnApproval
	SET APP_APPDTE = '2021-10-20',
		APP_COMMENT = '반려되었습니다. 다시 제출하세요.',
		APP_STATE = '반려'
WHERE app_no = 'app1009';

-- 2-2. '승인대기' 상태인 결재 현황 화면에서의 결재 조치 등록 폼 (작업진행상태)
UPDATE ontask
	SET TASK_STATE = '진행완료'
WHERE task_no = 10;

--==================================================================================================================================

-- 결재 현황 페이징 처리	
SELECT *
FROM (
	SELECT rownum cnt, oa.APP_NO, op.PRO_NAME, ot.TASK_NAME, ot.TASK_CONTENT, oa.APP_REGDTE, oa.APP_DEADLINE, oa.APP_APPDTE, oa.APP_STATE
	FROM OnProject op, OnTask ot, OnApproval oa, OnProject_Member pm
	WHERE oa.TASK_NO = ot.TASK_NO
	AND op.PRO_NO = pm.PRO_NO
	AND oa.MEM_NO = pm.MEM_NO
	AND ot.TASK_NAME LIKE '%'||''||'%'
	ORDER BY ot.task_no DESC)
WHERE cnt BETWEEN 1 AND 5;


-- 총 데이터 건수 표시
SELECT COUNT(*)
FROM (
	SELECT rownum cnt, oa.APP_NO, op.PRO_NAME, ot.TASK_NAME, ot.TASK_CONTENT, oa.APP_REGDTE, oa.APP_DEADLINE, oa.APP_APPDTE, oa.APP_STATE
	FROM OnProject op, OnTask ot, OnApproval oa, OnProject_Member pm
	WHERE oa.TASK_NO = ot.TASK_NO
	AND op.PRO_NO = pm.PRO_NO
	AND oa.MEM_NO = pm.MEM_NO
	AND ot.TASK_NAME LIKE '%'||''||'%'
	ORDER BY ot.task_no DESC);
	
SELECT COUNT(*)
FROM (
	SELECT op.PRO_NAME, ot.TASK_NAME, ot.TASK_CONTENT, oa.APP_REGDTE, oa.APP_DEADLINE, oa.APP_APPDTE, oa.APP_STATE
		FROM OnProject op, OnTask ot, OnApproval oa, OnProject_Member pm
		WHERE oa.TASK_NO = ot.TASK_NO
		AND oa.MEM_NO = pm.MEM_NO
		ORDER BY oa.app_regdte DESC)
WHERE pro_name LIKE '%'||'P'||'%';