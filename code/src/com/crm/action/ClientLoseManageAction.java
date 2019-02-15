package com.crm.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.LoseService;
import com.crm.vo.LoseRecord;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ClientLoseManageAction extends ActionSupport implements ModelDriven,ServletRequestAware{
	private HttpServletRequest request;
	
	private List<LoseRecord> records = new ArrayList<LoseRecord>();
    private LoseRecord record;
    private String addMeasure="";
    private String status;
    private String clientName;
    private String userid;

	private LoseService loseService;

	public String listAll(){
		records = loseService.findAll();
		
		return "list";
	}
	
	public String list(){		
		if(status.equals("3")){
			status = "";
		}
		if(clientName == null){
			clientName = "";
		}
		if(userid == null){
			userid = "";
		}
		
		records = loseService.list(status,clientName,userid);
		
		return "list";
	}
	
	public String prePostpone(){
		record = loseService.find(request.getParameter("lose_id"));
		
		return "postpone";
	}
	
	public String preVerify(){
		record = loseService.find(request.getParameter("lose_id"));
		
		return "verify";
	}
	
	public String postpone(){
		if(!addMeasure.equals("")){
			record.setLose_measure(record.getLose_measure()+"\n"+addMeasure);
		}
		record.setLose_status("1");
		loseService.update(record);
		
		//更新页面
		record = loseService.find(record.getLose_id());
		
		return "postpone";
	}
	
	public String verify(){
		record.setLose_status("2");
		loseService.update(record);
		
		//更新页面
		record = loseService.find(record.getLose_id());
		
		return "verify";
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public Object getModel() {
		return this.record;
	}
	
	public List<LoseRecord> getRecords() {
		return records;
	}

	public void setRecords(List<LoseRecord> records) {
		this.records = records;
	}

	public LoseService getLoseService() {
		return loseService;
	}

	public void setLoseService(LoseService loseService) {
		this.loseService = loseService;
	}

	public LoseRecord getRecord() {
		return record;
	}

	public void setRecord(LoseRecord record) {
		this.record = record;
	}

	public String getAddMeasure() {
		return addMeasure;
	}

	public void setAddMeasure(String addMeasure) {
		this.addMeasure = addMeasure;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
}
