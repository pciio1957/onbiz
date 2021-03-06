package onbiz.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import onbiz.dao.OnTaskDao;
import onbiz.vo.OnOutput;
import onbiz.vo.OnOutput_Approval;
import onbiz.vo.OnTask;
import onbiz.vo.OnTask_Project;

@Service
public class OnTaskService {
	@Autowired
	private OnTaskDao dao;
	

	// [내작업] 프로젝트별 내 작업 조회
	public ArrayList<OnTask_Project> mytaskList(OnTask_Project sch) {
		return dao.mytaskList(sch);
	}

	// [내작업] 내작업 검색 
	public ArrayList<OnTask_Project> schtaskList(OnTask sch) {
		return dao.schtaskList(sch);
	}
	
	// [간트차트/내작업] 참여프로젝트 조회 
	public ArrayList<OnTask_Project> myProList(OnTask_Project sch) {
		return dao.myProList(sch);
	}
	
	// [내작업] 멤버번호 조회
	public String myMemNo(OnTask_Project tp) {
		return dao.myMemNo(tp);
	}
	
	// [내작업] 프로젝트 기간 조회
	public OnTask_Project myProDuration(String pro_no) {
		return dao.myProDuration(pro_no);
	}
	

	
	// [내작업] 내작업 상세조회
	public OnTask_Project detailTask(OnTask task) {
		return dao.detailTask(task);
	}
	
	// [내작업] 내작업 CRUD
	public void myinsert(OnTask_Project task) {
		task.setTask_state("진행중");
		dao.myinsert(task);
	}
	
	public void myupdate(OnTask_Project task) {
		dao.myupdate(task);
	}
	
	public void mydelete(OnTask_Project task) {
		dao.mydelete(task);
	}
	
	

	
	@Value("${upload0}") private String upload;
	@Value("${tmpUpload0}") private String tmpUpload;
	
	// [내작업] 산출물 제출 
	public void uploadOutput(int no, MultipartFile output) {
		String fileName = output.getOriginalFilename();
		System.out.println("자료유형: " + output.getContentType());
		System.out.println("객체 : " + output);
		if(fileName != null && !fileName.equals("")) {
			File tmpFile = new File(tmpUpload + fileName);
			File orgFile = new File(upload + fileName);

			try {

				output.transferTo(tmpFile);
				System.out.println("파일이름 " + fileName);
				
				Files.copy(tmpFile.toPath(), orgFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		dao.uploadOutput(new OnOutput(fileName, no));
	}
	
	public String appPM(String pro_no) {
		return dao.appPM(pro_no);
	}
	
	// [내작업] 산출물 제출 후 결재 요청
	public void approvalInsert(OnOutput_Approval app) {
		dao.approvalInsert(app);
	}
	
	// [내작업] 산출물/결재 상세정보 조회 
	public OnOutput_Approval appDetail(String task_no) {
		return dao.appDetail(task_no);
	}
}
