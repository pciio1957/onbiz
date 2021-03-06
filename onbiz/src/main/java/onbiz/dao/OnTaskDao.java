package onbiz.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import onbiz.vo.OnOutput;
import onbiz.vo.OnOutput_Approval;
import onbiz.vo.OnTask;
import onbiz.vo.OnTask_Project;

@Repository
public interface OnTaskDao {

	
	// [내작업] 프로젝트별 내작업 조회
	public ArrayList<OnTask_Project> mytaskList(OnTask_Project sch);
	
	// [내작업] 내작업 검색
	public ArrayList<OnTask_Project> schtaskList(OnTask sch);
	
	// [내작업] 참여프로젝트 조회 
	public ArrayList<OnTask_Project> myProList(OnTask_Project sch);
	
	// [내작업] 멤버번호 조회
	public String myMemNo(OnTask_Project tp);
	
	// [내작업] 프로젝트 기간 조회
	public OnTask_Project myProDuration(String pro_no);
	
	// [내작업] 내작업 상세조회
	public OnTask_Project detailTask(OnTask task);
	
	
	// [내작업] 내작업 등록/수정/삭제
	public void myinsert(OnTask_Project task);
	public void myupdate(OnTask_Project task);
	public void mydelete(OnTask_Project task);
	
	
	// [내작업] 산출물 제출 
	public void uploadOutput(OnOutput output);
	public String appPM(String pro_no);
	public void approvalInsert(OnOutput_Approval app);
	public OnOutput_Approval appDetail(String task_no);
}
