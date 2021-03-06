package onbiz.vo;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

public class OnRisk {
  private int cnt;
  
 private int risk_no; // --리스크 번호
 private String risk_kind; // --분류
 private String  pro_no;  //--프젝번호
 private String task_no; //  --작업번호 
 private String risk_name;  // --리스크명 
 private String risk_content;  // --리스크내용
 private Date risk_regdte;  //--등록일
 private Date risk_uptdte; // --수정일 
 private Date risk_occdte;  //--발생일 
 private String  risk_state;  // --상태
 private  String  riskfile_name; // --첨부파일명
 private int  risk_viewcnt; // --조회수 
 private String risk_no2;  //--상위번호
 private String mem_no;  // --작성자
  private MultipartFile report;
  
  private int hold;
  private int complete;
  private int fixing;
  private int open;
  
  private String pro_name;
  private String emp_korname;
  
  public OnRisk() {
    super();
    // TODO Auto-generated constructor stub
  }
  /**
   * @return the risk_no
   */
  public int getRisk_no() {
    return risk_no;
  }
  /**
   * @param risk_no the risk_no to set
   */
  public void setRisk_no(int risk_no) {
    this.risk_no = risk_no;
  }
  /**
   * @return the risk_kind
   */
  public String getRisk_kind() {
    return risk_kind;
  }
  /**
   * @param risk_kind the risk_kind to set
   */
  public void setRisk_kind(String risk_kind) {
    this.risk_kind = risk_kind;
  }
  /**
   * @return the pro_no
   */
  public String getPro_no() {
    return pro_no;
  }
  /**
   * @param pro_no the pro_no to set
   */
  public void setPro_no(String pro_no) {
    this.pro_no = pro_no;
  }
  /**
   * @return the task_no
   */
  public String getTask_no() {
    return task_no;
  }
  /**
   * @param task_no the task_no to set
   */
  public void setTask_no(String task_no) {
    this.task_no = task_no;
  }
  /**
   * @return the risk_name
   */
  public String getRisk_name() {
    return risk_name;
  }
  /**
   * @param risk_name the risk_name to set
   */
  public void setRisk_name(String risk_name) {
    this.risk_name = risk_name;
  }
  /**
   * @return the risk_content
   */
  public String getRisk_content() {
    return risk_content;
  }
  /**
   * @param risk_content the risk_content to set
   */
  public void setRisk_content(String risk_content) {
    this.risk_content = risk_content;
  }
  /**
   * @return the risk_regdte
   */
  public Date getRisk_regdte() {
    return risk_regdte;
  }
  /**
   * @param risk_regdte the risk_regdte to set
   */
  public void setRisk_regdte(Date risk_regdte) {
    this.risk_regdte = risk_regdte;
  }
  /**
   * @return the risk_uptdte
   */
  public Date getRisk_uptdte() {
    return risk_uptdte;
  }
  /**
   * @param risk_uptdte the risk_uptdte to set
   */
  public void setRisk_uptdte(Date risk_uptdte) {
    this.risk_uptdte = risk_uptdte;
  }
  /**
   * @return the risk_occdte
   */
  public Date getRisk_occdte() {
    return risk_occdte;
  }
  /**
   * @param risk_occdte the risk_occdte to set
   */
  public void setRisk_occdte(Date risk_occdte) {
    this.risk_occdte = risk_occdte;
  }
  /**
   * @return the risk_state
   */
  public String getRisk_state() {
    return risk_state;
  }
  /**
   * @param risk_state the risk_state to set
   */
  public void setRisk_state(String risk_state) {
    this.risk_state = risk_state;
  }
  /**
   * @return the risk_doc
   */
  public String getRiskfile_name() {
    return riskfile_name;
  }
  /**
   * @param risk_doc the risk_doc to set
   */
  public void setRiskfile_name(String riskfile_name) {
    this.riskfile_name = riskfile_name;
  }
  /**
   * @return the risk_viewcnt
   */
  public int getRisk_viewcnt() {
    return risk_viewcnt;
  }
  /**
   * @param risk_viewcnt the risk_viewcnt to set
   */
  public void setRisk_viewcnt(int risk_viewcnt) {
    this.risk_viewcnt = risk_viewcnt;
  }
  /**
   * @return the risk_no2
   */
  public String getRisk_no2() {
    return risk_no2;
  }
  /**
   * @param risk_no2 the risk_no2 to set
   */
  public void setRisk_no2(String risk_no2) {
    this.risk_no2 = risk_no2;
  }
  /**
   * @return the mem_no
   */
  public String getMem_no() {
    return mem_no;
  }
  /**
   * @param mem_no the mem_no to set
   */
  public void setMem_no(String mem_no) {
    this.mem_no = mem_no;
  }
  /**
   * @return the report
   */
  public MultipartFile getReport() {
    return report;
  }
  /**
   * @param report the report to set
   */
  public void setReport(MultipartFile report) {
    this.report = report;
  }
  /**
   * @return the cnt
   */
  public int getCnt() {
    return cnt;
  }
  /**
   * @param cnt the cnt to set
   */
  public void setCnt(int cnt) {
    this.cnt = cnt;
  }
  /**
   * @return the hold
   */
  public int getHold() {
    return hold;
  }
  /**
   * @param hold the hold to set
   */
  public void setHold(int hold) {
    this.hold = hold;
  }
  /**
   * @return the complete
   */
  public int getComplete() {
    return complete;
  }
  /**
   * @param complete the complete to set
   */
  public void setComplete(int complete) {
    this.complete = complete;
  }
  /**
   * @return the fixing
   */
  public int getFixing() {
    return fixing;
  }
  /**
   * @param fixing the fixing to set
   */
  public void setFixing(int fixing) {
    this.fixing = fixing;
  }
  /**
   * @return the open
   */
  public int getOpen() {
    return open;
  }
  /**
   * @param open the open to set
   */
  public void setOpen(int open) {
    this.open = open;
  }
  /**
   * @return the pro_name
   */
  public String getPro_name() {
    return pro_name;
  }
  /**
   * @param pro_name the pro_name to set
   */
  public void setPro_name(String pro_name) {
    this.pro_name = pro_name;
  }
  /**
   * @return the emp_korname
   */
  public String getEmp_korname() {
    return emp_korname;
  }
  /**
   * @param emp_korname the emp_korname to set
   */
  public void setEmp_korname(String emp_korname) {
    this.emp_korname = emp_korname;
  }
}
