package onbiz.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import onbiz.dao.OnApprovalDao;
import onbiz.vo.OnApprovalDetail;
import onbiz.vo.OnApprovalView;

@Service
public class OnApprovalServ {
	
	@Autowired(required = false)
	private OnApprovalDao dao;
	
	/*
	public ArrayList<OnApprovalView> proList(OnApprovalView sch) {
		return dao.proList(sch);
	}
	*/
	public ArrayList<OnApprovalView> getAppList(OnApprovalView sch) {
		if(sch.getTask_name() == null) sch.setTask_name("");
		System.out.println("======================================== [Serv] 결재 조회 리스트 호출 ========================================");
		return dao.getAppList(sch);
	}
	
	public OnApprovalDetail getAppDetail(String app_no) {
		OnApprovalDetail ad = dao.getAppDetail(app_no);
		System.out.println("======================================== [Serv] 결재 상세 조회 호출 ========================================");
		return ad;
	}
	
	public void uptAppList(OnApprovalDetail upt) {
		System.out.println("======================================== [Serv] 결재 조치 등록 폼 호출 ========================================");
		System.out.println("======================================== [Serv] 결재 등록 정보 확인 ========================================");
		System.out.println("결재 번호 : " + upt.getApp_no());
		System.out.println("결재 등록일 : " + upt.getApp_regdte());
		System.out.println("결재 만료일 : " + upt.getApp_deadline());
		System.out.println("결재 승인일 : " + upt.getApp_appdte());
		System.out.println("작업명 : " + upt.getTask_name());
		System.out.println("작업 내용 : " + upt.getTask_content());
		System.out.println("결재 답변 : " + upt.getApp_comment());
		System.out.println("결재 담당자 : " + upt.getMem_no());
		System.out.println("결재 승인여부 : " + upt.getApp_state());
		dao.uptAppList(upt);
	}

	public void uptTaskStat(OnApprovalDetail upt) {
		dao.uptTaskStat(upt);
	}

	
}