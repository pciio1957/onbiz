
package onbiz.service;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import onbiz.dao.Pro_regDao;
import onbiz.vo.OnEmp;
import onbiz.vo.OnEmp_Dept;
import onbiz.vo.OnEmp_OnDept;
import onbiz.vo.OnProject_File;
import onbiz.vo.OnProject_Member;
import onbiz.vo.Onproject;
import onbiz.vo.Onproject_Member2;
import onbiz.vo.Ordercom;

@Service
public class Pro_regService {

  @Autowired(required = false)
  private Pro_regDao dao;
  
  //1. 발주처리스트
  public ArrayList<Ordercom> ordercomList(Ordercom sch){
      if(sch.getOrdercom_name()==null) sch.setOrdercom_name("");
      if(sch.getOrdercom_kind()==null) sch.setOrdercom_kind("");
      System.out.println("진행중-서비스");
      return dao.ordercomList(sch); 
  }
  
  //2.사원명리스트
  public ArrayList<OnEmp> emplist(OnEmp sch2){
    if(sch2.getEmp_korname()==null) sch2.setEmp_korname("");
    if(sch2.getEmp_engname()==null) sch2.setEmp_engname("");
    System.out.println("진행중-서비스");
    return dao.emplist(sch2);

}
  //3. 부서명 불러오기 
  public ArrayList<OnEmp_Dept> deptList(OnEmp_Dept sch3){
    if(sch3.getDept_name()==null) sch3.setDept_name("");
    return dao.deptList(sch3);
  }

  //4. 부서명 선택 후 결과값 불러오기 ajax 
  public ArrayList<OnEmp> empnamelist(String sch4){
    if(sch4 == null) sch4 = "";
    return dao.empnamelist(sch4);
  }
  
  //5. 최종멤버등록 ajax 
  public ArrayList<OnEmp_OnDept> emptablelist(OnEmp_OnDept sch5){
    if(sch5.getEmp_korname() == null) sch5.setEmp_korname("");
    if(sch5.getDept_name() == null) sch5.setDept_name("");
    return dao.emptablelist(sch5);
  }
  //6. 프로젝트등록 
  public void insertPro(Onproject ins) {
    System.out.println("첨부파일"+ins.getReport().getOriginalFilename());
    dao.insertPro(ins);

    System.out.println(ins.getOrdercom_no());
    
 
    profileinsert(ins.getPro_no(), ins.getReport());
  }

  //6. 프로젝트정보등록 
  @Value("${upload0}")
  private String upload2;
  @Value("${tmpUpload0}")
  private String tmpUpload2;

  //7. 산출물등록..(수정필요)
  public void profileinsert(String Pro_no, MultipartFile report) {
    String fileName = report.getOriginalFilename();
    System.out.println(fileName);
    if(fileName!=null && !fileName.equals("")) { //파일명없을경우 
        File tmpFile = new File(tmpUpload2+fileName);
        File orgFile = new File(upload2+fileName);
        try {
            // 변환
          report.transferTo(tmpFile);
            // 최종 웹 서버에 있는 파일 위치로 로딩.
            Files.copy(tmpFile.toPath(), orgFile.toPath(), 
                    StandardCopyOption.REPLACE_EXISTING);
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    dao.profileinsert(new OnProject_File(fileName));
  }
  
    //8. 멤버등록 
    public void promeminsert(String SessionEmpno) {
    String mem = SessionEmpno;
    System.out.println(mem);
    String array[] = mem.split(",");
      System.out.println(array);
      for(String p : array ){
        dao.promeminsert(p);
    }
    }
    /*
    public void promeminsert(OnProject_Member member) {
    String mem =  member.getEmp_no();
    System.out.println(mem);
    String array[] = mem.split(",");
      System.out.println(array);
      for(String p : array ){
        dao.promeminsert(p);
    }
    }*/
    
    //9. 프로젝트 검색 
      public ArrayList<Onproject> getprolist(Onproject project){
        if(project.getPro_kind() ==null)project.setPro_kind("");
        if(project.getPro_name()==null) project.setPro_name("");
        if(project.getPro_state()==null) project.setPro_state("");
        return dao.getprolist(project);
      }
      
      //9. 프로젝트 검색 
      public ArrayList<Onproject> getprolist2(Onproject project){
        if(project.getPro_kind() ==null)project.setPro_kind("");
        if(project.getPro_name()==null) project.setPro_name("");
        if(project.getPro_state()==null) project.setPro_state("");
        return dao.getprolist2(project);
      }
      
      
    //10. 프로젝트 상세 
      public Onproject prodetail(Onproject project) {
        if(project.getPro_no() == null) project.setPro_no("");
      return dao.getproject(project);
        
      }
    //11. 프로젝트멤버리스트상세
     public ArrayList<Onproject_Member2> getprojectmember(Onproject project) {
        if(project.getPro_no() == null) project.setPro_no("");
      return dao.getprojectmember(project);
      }
    
     
     
     public ArrayList<Onproject_Member2> getpgmember(Onproject project){
       if(project.getPro_no() == null) project.setPro_no("");
       return dao.getpgmember(project);
     }
      
    //11.멤버추가등록
     public void promeminsert2(OnEmp p) {
     if(p.getPro_no()==null) p.setPro_no("");
     if(p.getEmp_no()==null) p.setEmp_no("");
           dao.promeminsert2(p);
     }
      
    //12.프로젝트멤버상세 (개인)
     public ArrayList<OnProject_Member> memobj(OnProject_Member memno) {
       if(memno.getMem_no()==null) memno.setMem_no("");
       return dao.memobj(memno);
     }
     
     //13.프로젝트 멤버 상태변경
     public void updatemem(OnProject_Member mem_state) {
       if(mem_state.getMem_state() ==null) mem_state.setMem_state("활동");
       if(mem_state.getMem_no()==null) mem_state.setMem_no("");
       if(mem_state.getMem_witdte()==null) mem_state.setMem_witdte("");
        dao.updatemem(mem_state);
     }
     
     //14. 프로젝트 변경 
     public ArrayList<Onproject> projectupdate(Onproject project) {
       if(project.getPro_no()==null) project.setPro_no("");
       return dao.projectupdate(project);
     }
     
     //15. 멤버 상세 
     public ArrayList<OnEmp> empdetail(OnEmp empno) {
       if(empno.getEmp_no()==null) empno.setEmp_no("");
       System.out.println(empno.getEmp_no());
       return dao.empdetail(empno);
     }
     
     public ArrayList<Onproject> projectsch(Onproject prosch) {
       if(prosch.getPro_name()==null) prosch.setPro_name("");
       return dao.projectsch(prosch);
     }
  
     public void deletemem (OnProject_Member member){
       if(member.getMem_no()==null) member.setEmp_no("");
       dao.deletemem(member);
     }
     
     //16. 프로젝트 멤버 갯수 
     public int getprojectmembertot(Onproject project) {
       if(project.getPro_no()==null) project.setPro_no("");
       return dao.getprojectmembertot(project);
       
     }
     
     //17. 프로젝트 리스트 초기값 로딩
     public ArrayList<Onproject>getprolistloading(String sessionEmpNo){
       if(sessionEmpNo==null) sessionEmpNo=("");
       return dao.getprolistloading(sessionEmpNo);
     }
}

