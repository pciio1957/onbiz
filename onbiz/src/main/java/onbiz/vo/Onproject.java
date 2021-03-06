package onbiz.vo;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;
import com.fasterxml.jackson.annotation.JsonFormat;

public class Onproject {
  String pro_no;// --프로젝트번호
  //String emp_no;//S OnEmp(emp_no), --프로젝트담당 PM
  String pro_kind;//,'소프트웨어')), --프로젝트종류
  String pro_name ;//  --프로젝트명
  String pro_goal ;//  --프로젝트목표
  String pro_content ;//  --프로젝트내용
  @JsonFormat 
  Date pro_startdte ;// --프로젝트 시작일
  @JsonFormat 
  Date pro_enddte ;//  --프로젝트종료일
  String ordercom_no;// --발주처
  String pro_state;// --상태 
  Date pro_regdte ;// --등록일
  String  pro_plandoc;//   --계획서 파일명 
  int  pro_budget ;//--예산 
  String  pro_uptcontent ;// --수정내용 
  //추가내용
  String ordercom_name;
  String emp_korname;
  String emp_no;
  String emp_email;
  String pm;
  //첨부파일을받을 수 있는 객체.. 
  private MultipartFile report;
  public Onproject() {
    super();
    // TODO Auto-generated constructor stub
  }
  public Onproject(String pro_kind, String pro_name, String pro_state) {
    super();
    this.pro_kind = pro_kind;
    this.pro_name = pro_name;
    this.pro_state = pro_state;
  }
  public Onproject(String pro_no, String pro_kind, String pro_name, String pro_goal,
      String pro_content, Date pro_startdte, Date pro_enddte, String ordercom_no, String pro_state,
      Date pro_regdte, String pro_plandoc, int pro_budget, String pro_uptcontent) {
    super();
    this.pro_no = pro_no;
   
    this.pro_kind = pro_kind;
    this.pro_name = pro_name;
    this.pro_goal = pro_goal;
    this.pro_content = pro_content;
    this.pro_startdte = pro_startdte;
    this.pro_enddte = pro_enddte;
    this.ordercom_no = ordercom_no;
    this.pro_state = pro_state;
    this.pro_regdte = pro_regdte;
    this.pro_plandoc = pro_plandoc;
    this.pro_budget = pro_budget;
    this.pro_uptcontent = pro_uptcontent;
  }
  /**
   * @return the pro_no
   */
  public String getPro_no() {
    return pro_no;
  }
  public Onproject(String pro_no, String emp_no, String pro_kind, String pro_name, String pro_goal,
      String pro_content, Date pro_enddte, String ordercom, String pro_state, String pro_plandoc,
      int pro_budget, String pro_uptcontent) {
    super();
    this.pro_no = pro_no;
  
    this.pro_kind = pro_kind;
    this.pro_name = pro_name;
    this.pro_goal = pro_goal;
    this.pro_content = pro_content;
    this.pro_enddte = pro_enddte;
    this.ordercom_no = ordercom;
    this.pro_state = pro_state;
    this.pro_plandoc = pro_plandoc;
    this.pro_budget = pro_budget;
    this.pro_uptcontent = pro_uptcontent;
  }
  /**
   * @param pro_no the pro_no to set
   */
  public void setPro_no(String pro_no) {
    this.pro_no = pro_no;
  }

  public String getPro_kind() {
    return pro_kind;
  }
  /**
   * @param pro_kind the pro_kind to set
   */
  public void setPro_kind(String pro_kind) {
    this.pro_kind = pro_kind;
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
   * @return the pro_goal
   */
  public String getPro_goal() {
    return pro_goal;
  }
  /**
   * @param pro_goal the pro_goal to set
   */
  public void setPro_goal(String pro_goal) {
    this.pro_goal = pro_goal;
  }
  /**
   * @return the pro_content
   */
  public String getPro_content() {
    return pro_content;
  }
  /**
   * @param pro_content the pro_content to set
   */
  public void setPro_content(String pro_content) {
    this.pro_content = pro_content;
  }
  /**
   * @return the pro_startdte
   */
  public Date getPro_startdte() {
    return pro_startdte;
  }
  /**
   * @param pro_startdte the pro_startdte to set
   */
  public void setPro_startdte(Date pro_startdte) {
    this.pro_startdte = pro_startdte;
  }
  /**
   * @return the pro_enddte
   */
  public Date getPro_enddte() {
    return pro_enddte;
  }
  /**
   * @param pro_enddte the pro_enddte to set
   */
  public void setPro_enddte(Date pro_enddte) {
    this.pro_enddte = pro_enddte;
  }
  /**
   * @return the ordercom_
   */
  public String getOrdercom_no() {
    return ordercom_no;
  }
  /**
   * @param ordercom_ the ordercom_ to set
   */
  public void setOrdercom_no(String ordercom_) {
    this.ordercom_no = ordercom_;
  }
  /**
   * @return the pro_state
   */
  public String getPro_state() {
    return pro_state;
  }
  /**
   * @param pro_state the pro_state to set
   */
  public void setPro_state(String pro_state) {
    this.pro_state = pro_state;
  }
  /**
   * @return the pro_regdte
   */
  public Date getPro_regdte() {
    return pro_regdte;
  }
  /**
   * @param pro_regdte the pro_regdte to set
   */
  public void setPro_regdte(Date pro_regdte) {
    this.pro_regdte = pro_regdte;
  }
  /**
   * @return the pro_plandoc
   */
  public String getPro_plandoc() {
    return pro_plandoc;
  }
  /**
   * @param pro_plandoc the pro_plandoc to set
   */
  public void setPro_plandoc(String pro_plandoc) {
    this.pro_plandoc = pro_plandoc;
  }
  /**
   * @return the pro_budget
   */
  public int getPro_budget() {
    return pro_budget;
  }
  /**
   * @param pro_budget the pro_budget to set
   */
  public void setPro_budget(int pro_budget) {
    this.pro_budget = pro_budget;
  }
  /**
   * @return the pro_uptcontent
   */
  public String getPro_uptcontent() {
    return pro_uptcontent;
  }
  /**
   * @param pro_uptcontent the pro_uptcontent to set
   */
  public void setPro_uptcontent(String pro_uptcontent) {
    this.pro_uptcontent = pro_uptcontent;
  }
  /**
   * @return the ordercom
   */
  public String getOrdercom() {
    return ordercom_no;
  }
  /**
   * @param ordercom the ordercom to set
   */
  public void setOrdercom(String ordercom) {
    this.ordercom_no = ordercom;
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
  /**
   * @return the ordercom_name
   */
  public String getOrdercom_name() {
    return ordercom_name;
  }
  /**
   * @param ordercom_name the ordercom_name to set
   */
  public void setOrdercom_name(String ordercom_name) {
    this.ordercom_name = ordercom_name;
  }
  /**
   * @return the emp_no
   */
  public String getEmp_no() {
    return emp_no;
  }
  /**
   * @param emp_no the emp_no to set
   */
  public void setEmp_no(String emp_no) {
    this.emp_no = emp_no;
  }
  /**
   * @return the emp_email
   */
  public String getEmp_email() {
    return emp_email;
  }
  /**
   * @param emp_email the emp_email to set
   */
  public void setEmp_email(String emp_email) {
    this.emp_email = emp_email;
  }
  /**
   * @return the pm
   */
  public String getPm() {
    return pm;
  }
  /**
   * @param pm the pm to set
   */
  public void setPm(String pm) {
    this.pm = pm;
  }
}
