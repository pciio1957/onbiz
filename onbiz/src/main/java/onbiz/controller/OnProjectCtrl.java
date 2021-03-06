package onbiz.controller;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import onbiz.service.Pro_regService;
import onbiz.vo.OnEmp;
import onbiz.vo.OnEmp_Dept;
import onbiz.vo.OnEmp_OnDept;
import onbiz.vo.OnProject_Member;
import onbiz.vo.OnTask_Project;
import onbiz.vo.Onproject;
import onbiz.vo.Ordercom;

//@RequestMapping("proreg.do") 
@Controller
@SessionAttributes("login")
public class OnProjectCtrl {

  @Autowired
  private Pro_regService service;

  private OnEmp sessionEmp; 
  private String sessionEmpNo; 
  
  @ModelAttribute("login")
  public OnEmp getOnEmp() {
      return new OnEmp();
  }   

    //1. 초기화면(등록)
    //http://localhost:7080/onbiz/getViewProReg.do
    @RequestMapping("getViewProReg.do")
    public String getViewProReg(@ModelAttribute("login") OnEmp login,HttpSession 
        session,Onproject project, Ordercom sch,
        OnEmp_Dept sch3, Model d) {
        System.out.println("초기화면(등록)");
        String emp_no2 = login.getEmp_no();
        System.out.println(emp_no2);
        sessionEmpNo = login.getEmp_no();
        d.addAttribute("sessionEmpNo",sessionEmpNo);
        d.addAttribute("ordercom", service.ordercomList( sch ));
        d.addAttribute("dept",service.deptList( sch3 ));
        d.addAttribute("projectobj", service.projectupdate(project));
        return "OnProject/PRO-REG-001-PM";   
    }
    
    //1-1. 산출물명불러오기
    // http://localhost:7080/onbiz/empnameListAjax.do
    //http://localhost:7080/onbiz/empnameListAjax.do?dept_name=백엔드개발팀1
    @RequestMapping("empnameListAjax.do")
    public String empnameListAjax(@RequestParam("dept_name")String sch4, Model d) {
        d.addAttribute("empnamelist", service.empnamelist(sch4));
        return "pageJsonReport";
    }
    
    
    //1-2. 직원명불러오기
    // http://localhost:7080/onbiz/emptableListAjax.do
    // http://localhost:7080/onbiz/emptableListAjax.do?emp_korname=이정호&dept_name=백엔드개발팀1
    @RequestMapping("emptableListAjax.do")
    public String emptableListAjax(OnEmp_OnDept sch5, Model d) {
        d.addAttribute("emptablelist", service.emptablelist(sch5));
        return "pageJsonReport";
    }

    
   
     //2 프로젝트 등록(쩡보)
    // http://localhost:7080/onbiz/proInsert.do
    /*
      @RequestMapping("proInsert.do")
       public String proInsert(Onproject ins, OnEmp_Dept sch3, Model d) {
       //d.addAttribute("emp", service.emplist( sch2 ));
       d.addAttribute("dept",service.deptList( sch3 ));
       System.out.println("등록창2 - insert");
      // System.out.println("# 사원번호 :"+login.getEmp_no());
       d.addAttribute("sessionEmpNo",sessionEmpNo);
       System.out.println("사원번호"+sessionEmpNo);
      // m.addAttribute("proList", service.myProList(new OnTask_Project(sessionEmpNo)));
        service.insertPro(ins);
        System.out.println("발주처"+ins.getOrdercom_no());
        System.out.println("예산:"+ins.getPro_budget());
        System.out.println("내용:"+ins.getPro_content());
        System.out.println("목표:"+ins.getPro_goal());
        System.out.println("종류:"+ins.getPro_kind());
        System.out.println("프로트명"+ins.getPro_name());
        System.out.println("파일경로:"+ins.getPro_plandoc());
        System.out.println("상태:"+ins.getPro_state());
        System.out.println("끝일"+ins.getPro_enddte());
        System.out.println("등록일"+ins.getPro_regdte());
        System.out.println("시작일"+ins.getReport());
        return "OnProject/PRO-REG-002-PM";
    }*/
      
    //3-2. 프로젝트 등록 후 이동  
      // http://localhost:7080/onbiz/prolist.do
       @RequestMapping("prolist2.do")
       public String prolist2(Onproject project, Onproject ins, Model d,HttpSession 
           session) {
         d.addAttribute("sessionEmpNo",sessionEmpNo);
         System.out.println("사원번호:프로젝트리스트화면에서.."+sessionEmpNo);
         System.out.println("발주처"+ins.getOrdercom_no());
         System.out.println("예산:"+ins.getPro_budget());
         System.out.println("내용:"+ins.getPro_content());
         System.out.println("목표:"+ins.getPro_goal());
         System.out.println("종류:"+ins.getPro_kind());
         System.out.println("프로트명"+ins.getPro_name());
         System.out.println("파일경로:"+ins.getPro_plandoc());
         System.out.println("상태:"+ins.getPro_state());
         System.out.println("끝일"+ins.getPro_enddte());
         System.out.println("등록일"+ins.getPro_regdte());
         System.out.println("시작일"+ins.getReport());
         service.insertPro(ins);
         return "OnProject/PRO-REG-003-PM";
       }
  /*
    
    //3. 프로젝트 멤버 등록/프로젝트리스트 화면 (프로젝트등록 및 리스트 뷰 처리) 
    // http://localhost:7080/onbiz/promemInsert.do
      @RequestMapping("promemInsert.do")
      public String promemInsert( OnProject_Member member, Onproject project, Model d) { 
      System.out.println("멤버 emp_no:"+member.getEmp_no());
      d.addAttribute("sessionEmpNo",sessionEmpNo);
      System.out.println("사원번호:프로젝트리스트화면에서.."+sessionEmpNo);
      d.addAttribute("projectobj", service.projectupdate(project));
      service.promeminsert(member);   
        return "OnProject/PRO-REG-003-PM";   
    }  
      */
    //3-1. 그냥 이동할때 
     // http://localhost:7080/onbiz/prolist.do
      @RequestMapping("prolist.do")
      public String prolist(@ModelAttribute("login") OnEmp login, Onproject ins, Onproject project, Model d,HttpSession 
          session) {
        System.out.println("사원번호:프로젝트리스트화면에서.."+sessionEmpNo);
        System.out.println("발주처"+ins.getOrdercom_no());
        System.out.println("예산:"+ins.getPro_budget());
        System.out.println("내용:"+ins.getPro_content());
        System.out.println("목표:"+ins.getPro_goal());
        System.out.println("종류:"+ins.getPro_kind());
        System.out.println("프로트명"+ins.getPro_name());
        System.out.println("파일경로:"+ins.getPro_plandoc());
        System.out.println("상태:"+ins.getPro_state());
        System.out.println("끝일"+ins.getPro_enddte());
        System.out.println("등록일"+ins.getPro_regdte());
        System.out.println("시작일"+ins.getReport());
        service.insertPro(ins);      
        sessionEmpNo = login.getEmp_no();
        System.out.println("사원번호:프로젝트리스트화면에서.."+sessionEmpNo);
        
        d.addAttribute("sessionEmpNo",sessionEmpNo);

        service.promeminsert(sessionEmpNo);   
        d.addAttribute("getprolistloading", service.getprolistloading(sessionEmpNo));

        return "OnProject/PRO-REG-003-PM";
      }
    
      
      // http://localhost:7080/onbiz/prolist.do
      @RequestMapping("prolist3.do")
      public String prolist3(@ModelAttribute("login") OnEmp login, Onproject ins, Onproject project, Model d,HttpSession 
          session) {
        sessionEmpNo = login.getEmp_no();
     
        System.out.println("사원번호:프로젝트리스트화면에서.."+sessionEmpNo);  
        d.addAttribute("sessionEmpNo",sessionEmpNo);
        d.addAttribute("getprolistloading", service.getprolistloading(sessionEmpNo));

        return "OnProject/PRO-REG-003-PM";
      }
      
      
      
    //4. 프로젝트 수정 
    // http://localhost:7080/onbiz/pro.do
    @RequestMapping("pro.do")
    public String pro(@ModelAttribute("login") OnEmp login, Onproject project, Model d) {
      service.getprolist(project);
      d.addAttribute("projectobj", service.projectupdate(project));
    return "OnProject/PRO-REG-003-PM";
    }
    
    //7. 프로젝트 리스트 
    //http://localhost:7080/onbiz/projectlistajax.do
    //http://localhost:7080/onbiz/projectlistajax.do?pro_state=진행중

    @RequestMapping("projectlistajax.do")
    public String projectlist(Onproject project, Model d) {
        d.addAttribute("projectlist", service.getprolist(project));
        return "pageJsonReport";
    }
    
    //웹 검색2
    @RequestMapping("projectlistajax2.do")
    public String projectlist2(Onproject project, Model d) {
        d.addAttribute("projectlist", service.getprolist2(project));
        return "pageJsonReport";
    }
    
    //8. 프로젝트 상세 
    
    // http://localhost:7080//onbiz/proDetail.do?pro_no=pro1001
    @RequestMapping("proDetail.do")
    public String proDetail(@ModelAttribute("login") OnEmp login,Onproject project,Model d) {
      d.addAttribute("prodetail", service.prodetail(project));
      d.addAttribute("memdetail",service.getprojectmember(project));
      d.addAttribute("memtot",service.getprojectmembertot(project));
      //project.getPro_no();
      //service.prodetail(project);
      return "OnProject/PRO-REG-004-PM";
    }
    
    //프로젝트등록후 
    // http://localhost:7080//onbiz/proDetail.do?pro_no=pro1001
    @RequestMapping("proDetail2.do")
    public String proDetail2(@ModelAttribute("login") OnEmp login,Onproject project, Onproject ins, Model d) {
      d.addAttribute("prodetail", service.prodetail(project));
      d.addAttribute("memdetail",service.getprojectmember(project));
      d.addAttribute("memtot",service.getprojectmembertot(project));
      //project.getPro_no();
      //service.prodetail(project);
      System.out.println("발주처"+ins.getOrdercom_no());
      System.out.println("예산:"+ins.getPro_budget());
      System.out.println("내용:"+ins.getPro_content());
      System.out.println("목표:"+ins.getPro_goal());
      System.out.println("종류:"+ins.getPro_kind());
      System.out.println("프로트명"+ins.getPro_name());
      System.out.println("파일경로:"+ins.getPro_plandoc());
      System.out.println("상태:"+ins.getPro_state());
      System.out.println("끝일"+ins.getPro_enddte());
      System.out.println("등록일"+ins.getPro_regdte());
      System.out.println("시작일"+ins.getReport());
      service.insertPro(ins);
      return "OnProject/PRO-REG-004-PM";
    }
    
    
    
    
    
    //9. 멤버 수정 
    
    // http://localhost:7080//onbiz/memupt.do?pro_no=pro1001
    @RequestMapping("memupt.do")
    public String memupt(@ModelAttribute("login") OnEmp login,Onproject project, OnEmp_Dept sch3,OnEmp sch2, Model d) {
      d.addAttribute("memdetail",service.getpgmember(project));
      d.addAttribute("dept",service.deptList( sch3 ));
      d.addAttribute("emp", service.emplist( sch2 ));
      return "OnProject/PRO-REG-005-PM";
    }
    
    //10. 멤버추가 
    //http://localhost:7080//onbiz/memberupt2.do?pro_name=pro1068&emp_no=1019
    @RequestMapping("memberupt2.do")
    public String memberupt2(@ModelAttribute("login") OnEmp login,Onproject project,OnEmp p, OnEmp_Dept sch3,OnEmp sch2,Model d) {
      service.promeminsert2(p);
      d.addAttribute("memdetail",service.getprojectmember(project));  
      d.addAttribute("memdetail",service.getpgmember(project));
      d.addAttribute("dept",service.deptList( sch3 ));
      d.addAttribute("emp", service.emplist( sch2 ));
    return "OnProject/PRO-REG-005-PM";
    }
    
    // http://localhost:7080//onbiz/memobjajax.do
    @RequestMapping("memobjajax.do")
    public String memobjajax(OnProject_Member memno, Model d) {
      d.addAttribute("memobj", service.memobj(memno));
      return "pageJsonReport";
    }
    
    
    @RequestMapping("updatemem.do")
    public String updatemem(@ModelAttribute("login") OnEmp login,OnProject_Member mem_state,Onproject project, Model d) {
      service.updatemem(mem_state);
      d.addAttribute("memdetail",service.getprojectmember(project));
    return "OnProject/PRO-REG-005-PM";
    }
    
    
    //프로젝트 수정 
    // http://localhost:7080//onbiz/proUpdate.do?pro_no=pro1032
    @RequestMapping("proUpdate.do")
    public String proUpdate(@ModelAttribute("login") OnEmp login,Onproject project, Ordercom sch,
        OnEmp sch2, OnEmp_Dept sch3, Model d) {
          d.addAttribute("ordercom", service.ordercomList( sch ));
          d.addAttribute("emp", service.emplist( sch2 ));
          d.addAttribute("dept",service.deptList( sch3 ));
          d.addAttribute("projectobj", service.projectupdate(project));
          System.out.println(project.getPro_no());
    return "OnProject/PRO-REG-001-PM";

    }
    
    //프로젝트 리스트 -> 검색처리 (상태) 
    public String empdetail(@ModelAttribute("login") OnEmp login,OnEmp empno,Model d) {
      d.addAttribute("empdetail", service.empdetail(empno));
      return "pageJsonReport";
    }
    
    //프로젝트 리스트 - > 검색처리 
    public String projectsch(@ModelAttribute("login") OnEmp login, Onproject prosch, Model d) {
      d.addAttribute("projectsch", service.projectsch(prosch));
      return "pageJsonReport";
    }
    
    //프로젝트 멤버 삭제 
    @RequestMapping("deletemem.do")
    public String deletemem(@ModelAttribute("login") OnEmp login,OnProject_Member member,
        Model d,Onproject project, OnEmp_Dept sch3,OnEmp sch2) {
      service.deletemem(member);
      d.addAttribute("memdetail",service.getprojectmember(project));
      d.addAttribute("dept",service.deptList( sch3 ));
      d.addAttribute("emp", service.emplist( sch2 ));
      //d.addAttribute("memdetail",service.getprojectmember(project));   
      return "OnProject/PRO-REG-005-PM";
    }
}