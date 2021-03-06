package onbiz.vo;

// 산출물 VO
public class OnOutput_Approval {
	String opt_no;
	String opt_name;
	String opt_doctype;
	int task_no;
	
	// 결재 테이블 Approval 내용과 같이 받음 
	private String app_no; // 결재 번호 (pk)
	private String app_regdte; // 결재 등록일
	private String app_deadline; // 결재 승인 만료일
	private String app_appdte; // 결재 승인일
	private String app_content; // 결재 요청내용
	private String app_comment; // 결재 답변
	private String app_state; // 결재 승인상태 (승인대기 / 승인 / 반려 / 취소)	
	private String mem_no; // 결재 승인관리자 (fk) (PM)


	public OnOutput_Approval() {
		super();
	}
	
	public OnOutput_Approval(String opt_name) {
	  super();
	  this.opt_name= opt_name;
	}

	public OnOutput_Approval(String opt_name, int task_no) {
		super();
		this.opt_name = opt_name;
		this.task_no = task_no;
	}

	public String getOpt_no() {
		return opt_no;
	}

	public void setOpt_no(String opt_no) {
		this.opt_no = opt_no;
	}

	public String getOpt_name() {
		return opt_name;
	}

	public void setOpt_name(String opt_name) {
		this.opt_name = opt_name;
	}

	public String getOpt_doctype() {
		return opt_doctype;
	}

	public void setOpt_doctype(String opt_doctype) {
		this.opt_doctype = opt_doctype;
	}

	public int getTask_no() {
		return task_no;
	}

	public void setTask_no(int task_no) {
		this.task_no = task_no;
	}

	public String getApp_no() {
		return app_no;
	}

	public void setApp_no(String app_no) {
		this.app_no = app_no;
	}

	public String getApp_regdte() {
		return app_regdte;
	}

	public void setApp_regdte(String app_regdte) {
		this.app_regdte = app_regdte;
	}

	public String getApp_deadline() {
		return app_deadline;
	}

	public void setApp_deadline(String app_deadline) {
		this.app_deadline = app_deadline;
	}

	public String getApp_appdte() {
		return app_appdte;
	}

	public void setApp_appdte(String app_appdte) {
		this.app_appdte = app_appdte;
	}

	public String getApp_content() {
		return app_content;
	}

	public void setApp_content(String app_content) {
		this.app_content = app_content;
	}

	public String getApp_comment() {
		return app_comment;
	}

	public void setApp_comment(String app_comment) {
		this.app_comment = app_comment;
	}

	public String getApp_state() {
		return app_state;
	}

	public void setApp_state(String app_state) {
		this.app_state = app_state;
	}

	public String getMem_no() {
		return mem_no;
	}

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
}
