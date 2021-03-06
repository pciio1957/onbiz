package onbiz.vo;

import java.util.Date;

public class OnEmp_OnDept {
  String emp_no; // 사원번호, 아이디로 사용
  String dept_no; // 부서번호
  String ptn_no; // 직책번호
  String auth_no; // -- 권한번호
   String emp_pass; //-- 비밀번호
   String emp_korname; // -- 한글이름
   String emp_engname; // -- 영어이름
   String emp_email; // -- 이메일
   Date emp_hiredte; //-- 입사일
   Date emp_birth; // -- 생년월일
   String emp_content; // -- 소개
   String emp_profile; // -- 증명사진 
   String emp_tel; // -- 전화번호
   String emp_addr;// -- 주소
   String emp_workst; //-- 재직상태
   Date emp_workchdte;// -- 재직상태변경일
   
   String dept_name; //--부서이름
   String dept_loc; //--부서위치
  public OnEmp_OnDept() {
    super();
    // TODO Auto-generated constructor stub
  }

  public OnEmp_OnDept(String emp_no, String dept_no, String ptn_no, String auth_no, String emp_pass,
      String emp_korname, String emp_engname, String emp_email, Date emp_hiredte, Date emp_birth,
      String emp_content, String emp_profile, String emp_tel, String emp_addr, String emp_workst,
      Date emp_workchdte, String dept_name, String dept_loc) {
    super();
    this.emp_no = emp_no;
    this.dept_no = dept_no;
    this.ptn_no = ptn_no;
    this.auth_no = auth_no;
    this.emp_pass = emp_pass;
    this.emp_korname = emp_korname;
    this.emp_engname = emp_engname;
    this.emp_email = emp_email;
    this.emp_hiredte = emp_hiredte;
    this.emp_birth = emp_birth;
    this.emp_content = emp_content;
    this.emp_profile = emp_profile;
    this.emp_tel = emp_tel;
    this.emp_addr = emp_addr;
    this.emp_workst = emp_workst;
    this.emp_workchdte = emp_workchdte;
    this.dept_name = dept_name;
    this.dept_loc = dept_loc;
  }
  public OnEmp_OnDept(String dept_name) {
    super();
    this.dept_name = dept_name;
  }

  public OnEmp_OnDept(String emp_korname, String dept_name) {
    super();
    this.emp_korname = emp_korname;
    this.dept_name = dept_name;
  }

  public OnEmp_OnDept(String emp_no, String emp_korname, String dept_name) {
    super();
    this.emp_no = emp_no;
    this.emp_korname = emp_korname;
    this.dept_name = dept_name;
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
   * @return the dept_no
   */
  public String getDept_no() {
    return dept_no;
  }
  /**
   * @param dept_no the dept_no to set
   */
  public void setDept_no(String dept_no) {
    this.dept_no = dept_no;
  }
  /**
   * @return the ptn_no
   */
  public String getPtn_no() {
    return ptn_no;
  }
  /**
   * @param ptn_no the ptn_no to set
   */
  public void setPtn_no(String ptn_no) {
    this.ptn_no = ptn_no;
  }
  /**
   * @return the auth_no
   */
  public String getAuth_no() {
    return auth_no;
  }
  /**
   * @param auth_no the auth_no to set
   */
  public void setAuth_no(String auth_no) {
    this.auth_no = auth_no;
  }
  /**
   * @return the emp_pass
   */
  public String getEmp_pass() {
    return emp_pass;
  }
  /**
   * @param emp_pass the emp_pass to set
   */
  public void setEmp_pass(String emp_pass) {
    this.emp_pass = emp_pass;
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
   * @return the emp_engname
   */
  public String getEmp_engname() {
    return emp_engname;
  }
  /**
   * @param emp_engname the emp_engname to set
   */
  public void setEmp_engname(String emp_engname) {
    this.emp_engname = emp_engname;
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
   * @return the emp_hiredte
   */
  public Date getEmp_hiredte() {
    return emp_hiredte;
  }
  /**
   * @param emp_hiredte the emp_hiredte to set
   */
  public void setEmp_hiredte(Date emp_hiredte) {
    this.emp_hiredte = emp_hiredte;
  }
  /**
   * @return the emp_birth
   */
  public Date getEmp_birth() {
    return emp_birth;
  }
  /**
   * @param emp_birth the emp_birth to set
   */
  public void setEmp_birth(Date emp_birth) {
    this.emp_birth = emp_birth;
  }
  /**
   * @return the emp_content
   */
  public String getEmp_content() {
    return emp_content;
  }
  /**
   * @param emp_content the emp_content to set
   */
  public void setEmp_content(String emp_content) {
    this.emp_content = emp_content;
  }
  /**
   * @return the emp_profile
   */
  public String getEmp_profile() {
    return emp_profile;
  }
  /**
   * @param emp_profile the emp_profile to set
   */
  public void setEmp_profile(String emp_profile) {
    this.emp_profile = emp_profile;
  }
  /**
   * @return the emp_tel
   */
  public String getEmp_tel() {
    return emp_tel;
  }
  /**
   * @param emp_tel the emp_tel to set
   */
  public void setEmp_tel(String emp_tel) {
    this.emp_tel = emp_tel;
  }
  /**
   * @return the emp_addr
   */
  public String getEmp_addr() {
    return emp_addr;
  }
  /**
   * @param emp_addr the emp_addr to set
   */
  public void setEmp_addr(String emp_addr) {
    this.emp_addr = emp_addr;
  }
  /**
   * @return the emp_workst
   */
  public String getEmp_workst() {
    return emp_workst;
  }
  /**
   * @param emp_workst the emp_workst to set
   */
  public void setEmp_workst(String emp_workst) {
    this.emp_workst = emp_workst;
  }
  /**
   * @return the emp_workchdte
   */
  public Date getEmp_workchdte() {
    return emp_workchdte;
  }
  /**
   * @param emp_workchdte the emp_workchdte to set
   */
  public void setEmp_workchdte(Date emp_workchdte) {
    this.emp_workchdte = emp_workchdte;
  }
  /**
   * @return the dept_name
   */
  public String getDept_name() {
    return dept_name;
  }
  /**
   * @param dept_name the dept_name to set
   */
  public void setDept_name(String dept_name) {
    this.dept_name = dept_name;
  }
  /**
   * @return the dept_loc
   */
  public String getDept_loc() {
    return dept_loc;
  }
  /**
   * @param dept_loc the dept_loc to set
   */
  public void setDept_loc(String dept_loc) {
    this.dept_loc = dept_loc;
  }
}
