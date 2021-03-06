package onbiz.dao;


import java.util.ArrayList;
import onbiz.vo.OnEmp;
import onbiz.vo.OnEmp_Dept;
import onbiz.vo.OnEmp_OnDept;
import onbiz.vo.OnProject_File;
import onbiz.vo.OnProject_Member;
import onbiz.vo.Onproject;
import onbiz.vo.Onproject_Member2;
import onbiz.vo.Ordercom;

public interface Pro_regDao {
    //1.산출물리스트
    public ArrayList<Ordercom> ordercomList(Ordercom sch2);
    //2. 사원리스트
    public ArrayList<OnEmp> emplist(OnEmp sch2);
    //3. 부서리스트
    public ArrayList<OnEmp_Dept> deptList(OnEmp_Dept sch3);
    //4. 사원이름 리스트
    public ArrayList<OnEmp> empnamelist(String sch4);
    //5. 프로젝트 테이블리스트 
    public ArrayList<OnEmp_OnDept> emptablelist(OnEmp_OnDept sch5);
    //6. 프로젝트 저장 
    public void insertPro(Onproject ins);
    //7. 산출물 저장 
    public void profileinsert(OnProject_File ins);
    //8. 프로젝트 멤버등록 
    public void promeminsert(String p);
    //9. 멤버추가등록
    public void promeminsert2(OnEmp p);
    //10. 프로젝트 리스트 
    public ArrayList<Onproject> getprolist(Onproject project);
    public ArrayList<Onproject> getprolist2(Onproject project);
    //11. 프로젝트상세
    public Onproject getproject(Onproject project);
    //12. 프로젝트멤버리스트
    public ArrayList<Onproject_Member2> getprojectmember(Onproject project);
    public ArrayList<Onproject_Member2> getpgmember(Onproject project);
    
    //13. 프로젝트멤버 상세
    public ArrayList<OnProject_Member> memobj(OnProject_Member memno);
    //14. 프로젝트멤버수정 
    public void updatemem(OnProject_Member mem_state);
    //15. 프로젝트 등록 후 수정 
    public ArrayList<Onproject> projectupdate(Onproject project);
    //16. 멤버상세 
    public ArrayList<OnEmp> empdetail(OnEmp empno);
    //17. 프로젝트검색 
    public ArrayList<Onproject> projectsch(Onproject prosch);
    //18. 프로젝트멤버 삭제 
    public void deletemem(OnProject_Member member);
    //19. 프로젝트 멤버 총 갯수 
    public int getprojectmembertot(Onproject project);

    public ArrayList<Onproject> getprolistloading(String sessionEmpNo);    
    
  }


