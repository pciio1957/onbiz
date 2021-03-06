package onbiz.vo;

import org.springframework.web.multipart.MultipartFile;

// 주 테이블 : OnTask 테이블 + 부 테이블 : OnProject 테이블 
// join된 테이블 
public class OnTask_Project {
	int id;				// 작업번호(pk)
	String text; 		// 작업명
	String start_date; 	// 시작일
	String end_date; 	// 종료일
	int duration; 		// 기간
	int progress; 		// 진행률
	int parent; 		// 상위작업
	String priority; 	// 우선순위
	String content;		// 작업내용
	String task_regdte;
	String task_uptdte;
	String task_state;
	String mem_no;
	
	// join된 내용
	String pro_no;
	String pro_name;
	String pro_startdte;
	String pro_enddte;
	String user; 		// 참조. emp_korname
	String emp_no;
	String app_state;
	
	// 산출물 
	private MultipartFile output;
	
	public OnTask_Project() {
		super();
	}

	public OnTask_Project(String emp_no) {
		super();
		this.emp_no = emp_no;
	}
	
	public OnTask_Project(String pro_no, String emp_no) {
		super();
		this.pro_no = pro_no;
		this.emp_no = emp_no;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}

	public int getParent() {
		return parent;
	}

	public void setParent(int parent) {
		this.parent = parent;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTask_regdte() {
		return task_regdte;
	}

	public void setTask_regdte(String task_regdte) {
		this.task_regdte = task_regdte;
	}

	public String getTask_uptdte() {
		return task_uptdte;
	}

	public void setTask_uptdte(String task_uptdte) {
		this.task_uptdte = task_uptdte;
	}

	public String getTask_state() {
		return task_state;
	}

	public void setTask_state(String task_state) {
		this.task_state = task_state;
	}

	public String getMem_no() {
		return mem_no;
	}

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}

	public String getPro_no() {
		return pro_no;
	}

	public void setPro_no(String pro_no) {
		this.pro_no = pro_no;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(String emp_no) {
		this.emp_no = emp_no;
	}

	public MultipartFile getOutput() {
		return output;
	}

	public void setOutput(MultipartFile output) {
		this.output = output;
	}

	public String getApp_state() {
		return app_state;
	}

	public void setApp_state(String app_state) {
		this.app_state = app_state;
	}

	public String getPro_startdte() {
		return pro_startdte;
	}

	public void setPro_startdte(String pro_startdte) {
		this.pro_startdte = pro_startdte;
	}

	public String getPro_enddte() {
		return pro_enddte;
	}

	public void setPro_enddte(String pro_enddte) {
		this.pro_enddte = pro_enddte;
	}
	
	
}
