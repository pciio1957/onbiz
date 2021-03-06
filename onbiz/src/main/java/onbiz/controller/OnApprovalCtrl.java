package onbiz.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import onbiz.service.OnApprovalServ;
import onbiz.vo.OnApprovalDetail;
import onbiz.vo.OnApprovalView;
import onbiz.vo.OnEmp;
import onbiz.vo.OnOutput;

@Controller
// 로그인값 선언
@SessionAttributes("login")
@RequestMapping("onapproval.do")
public class OnApprovalCtrl {
	
	@Autowired(required = false)
	private OnApprovalServ service;
	
	// 권한별 접근
	private String sessionEmpNo; 
	private String sessionAuthName; 
	private String myMem_no = "";

	private OnEmp sessionEmp; 
	
	// 로그인값 호출
	@ModelAttribute("login")
	public OnEmp getOnEmp() {
		return new OnEmp();
	}
	
	
	// 산출물 호출
	@ModelAttribute("output")
	public OnOutput getOutput() {
		return new OnOutput();
	}
	

	/*
	// http://localhost:7080/onbiz/onapproval.do?method=onapprovalajax.do
	@RequestMapping(params="method=onapprovalajax.do")
	public String appListAjax(OnApprovalView sch, @ModelAttribute("login") OnEmp login, Model d) {
		System.out.println("프로젝트 번호 : " + sch.getPro_no());
		System.out.println("사원 번호 : " + sch.getEmp_no());
		d.addAttribute("appList", service.getAppList(sch));
		System.out.println("======================================== [Ctrl] Json 데이터 변환 ========================================");
		return "pageJsonReport";
	}	
	*/
	
	// http://localhost:7080/onbiz/login.do
	// http://localhost:7080/onbiz/onapproval.do?method=applist
	@RequestMapping(params="method=applist")
	public String appList(OnApprovalView list, @ModelAttribute("login") OnEmp login, Model d) {
		sessionEmpNo = login.getEmp_no();
		sessionAuthName = login.getAuth_name();
		System.out.println("======================================== [Ctrl] 결재 현황 이동 ========================================");
		System.out.println("권한 : " + login.getAuth_name());
		
		d.addAttribute("list", service.getAppList(list));
		//d.addAttribute("proList", service.proList(new OnApprovalView(sessionEmpNo)));
		
		// 권한에 따른 화면 연결 분기
		String returnUrl = "OnApproval/TM_PM_DA-004";
		if(sessionAuthName.equals("tm")) {
			returnUrl = "OnApproval/TM_PM_DA-004";
		}
		
		return returnUrl;
	}
	
	
	// http://localhost:7080/onbiz/onapproval.do?method=uptForm
	@RequestMapping(params="method=uptForm")
	public String insAppForm(@RequestParam("app_no") String app_no, @ModelAttribute("output") OnOutput output, Model d) {
		d.addAttribute("dt", service.getAppDetail(app_no));
		System.out.println("======================================== [Ctrl] 결재 상세 폼 ========================================");
		System.out.println("결재번호 : " + app_no);
		System.out.println("산출물 파일명 : " + output.getOpt_name());
		
		
		return "OnApproval/TM_PM_DA-004_Detail";
	}
	
	// http://localhost:7080/onbiz/onapproval.do?method=uptlist
	@RequestMapping(params="method=uptlist")
	public String insAppList(@RequestParam("app_no") String app_no, @ModelAttribute("output") OnOutput output, Model d) {
		d.addAttribute("dt", service.getAppDetail(app_no));
		System.out.println("======================================== [Ctrl] 결재 상세 리스트 ========================================");
		System.out.println("결재번호 : " + app_no);
		System.out.println("산출물 파일명 : " + output.getOpt_name());
		
		return "OnApproval/TM/TM_PM_DA-004_DetailList";
	}	
	
	// http://localhost:7080/onbiz/onapproval.do?method=update
	@RequestMapping(params="method=update")
	public String uptAppList(OnApprovalDetail upt) {
		System.out.println("결재 번호 : " + upt.getApp_no());
		System.out.println("결재 등록일 : " + upt.getApp_regdte());
		System.out.println("결재 만료일 : " + upt.getApp_deadline());
		System.out.println("결재 승인일 : " + upt.getApp_appdte());
		System.out.println("작업명 : " + upt.getTask_name());
		System.out.println("작업 내용 : " + upt.getTask_content());
		System.out.println("결재 답변 : " + upt.getApp_comment());
		System.out.println("결재 담당자 : " + upt.getEmp_korname());
		System.out.println("결재 승인여부 : " + upt.getApp_state());
		System.out.println("task_state : " + upt.getTask_state());
		
		
		
		
		
	
		service.uptTaskStat(upt);	
		
		service.uptAppList(upt);

		
		System.out.println("======================================== [Ctrl] 결재 조치 완료 ========================================");
		return "redirect:/onapproval.do?method=applist";
	}
	
}
