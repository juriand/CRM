package com.crm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.util.ServletContextAware;

import com.crm.service.ClientService;
import com.crm.service.OpporService;
import com.crm.service.PlanService;
import com.crm.service.RoleService;
import com.crm.service.UserService;
import com.crm.vo.Client;
import com.crm.vo.Opportunity;
import com.crm.vo.Plan;
import com.crm.vo.PlanItem;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class PlanManageAction extends ActionSupport implements ModelDriven,ServletRequestAware{
	private List<PlanItem> planItem = new ArrayList<PlanItem>();	
	private Plan currentPlan = new Plan();	
	private PlanItem item = new PlanItem();	
	private Opportunity oppor = new Opportunity();	
	
	private OpporService opporService;
	private PlanService planService;
	private ClientService clientService;
	private RoleService roleService;
	
	private HttpServletRequest request;
	
	private boolean havePlanAuthor;
	private boolean haveExecuteAuthor;
	
	public String view(){
		User currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"6") == true){
			havePlanAuthor = true;
		}else{
			havePlanAuthor = false;
		}
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"7") == true){
			haveExecuteAuthor = true;
		}else{
			haveExecuteAuthor = false;
		}
		
		List<Opportunity> temp = opporService.view(request.getParameter("oppo_id").toString());
		oppor = temp.get(0);
		
		if(oppor.getOppo_plan() != null){
			planItem = planService.findPlanItem(oppor.getOppo_plan().getPlan_id());
		}else{
			planItem.clear();
		}
		
		return "view";
	}
	
	public String add(){
		List<Opportunity> temp = opporService.view(request.getParameter("oppo_id").toString());
		oppor = temp.get(0);
		
		//执行计划已存在，仅添加计划项
		if(oppor.getOppo_plan() != null){
			List<Plan> tempPlan = planService.findPlan(oppor.getOppo_plan().getPlan_id());
			currentPlan = tempPlan.get(0);
			
			item.setItem_plan(currentPlan);
			planService.addItem(item);
		}
		else{
			planService.addPlan(currentPlan);
			item.setItem_plan(currentPlan);
			planService.addItem(item);
			
			oppor.setOppo_plan(currentPlan);
			opporService.update(oppor);
		}
		
		//更新页面
		List<Opportunity> temp1 = opporService.view(request.getParameter("oppo_id").toString());
		oppor = temp1.get(0);
		
		if(oppor.getOppo_plan() != null){
			planItem = planService.findPlanItem(oppor.getOppo_plan().getPlan_id());
		}

		return "view";
	}
	
	public String update(){
		//更新数据
		List<PlanItem> temp1 = planService.findPlanItemByItemID(item.getItem_id());
		PlanItem tempItem = temp1.get(0);
		tempItem.setItem_content(item.getItem_content());
		tempItem.setItem_result(item.getItem_result());
		planService.update(tempItem);
		
		//更新页面
		List<Opportunity> temp = opporService.view(oppor.getOppo_id());
		oppor = temp.get(0);

		planItem = planService.findPlanItem(oppor.getOppo_plan().getPlan_id());
		
		return "view";
	}
	
	public String delete(){
		List<PlanItem> temp1 = planService.findPlanItemByItemID(request.getParameter("item_id").toString());
		PlanItem tempItem = temp1.get(0);
		planService.delete(tempItem);
		
		//更新页面
		List<Opportunity> temp = opporService.view(oppor.getOppo_id());
		oppor = temp.get(0);

		planItem = planService.findPlanItem(oppor.getOppo_plan().getPlan_id());
		
		return "view";
	}
	
	public String execute(){
		List<Opportunity> temp = opporService.view(request.getParameter("oppo_id").toString());
		oppor = temp.get(0);
		oppor.setOppo_status("2");
		opporService.update(oppor);
		
		return "view";
	}
	
	public String end(){
		List<Opportunity> temp = opporService.view(request.getParameter("oppo_id").toString());
		oppor = temp.get(0);
		oppor.setOppo_status("4");
		opporService.update(oppor);
		
		return "view";
	}
	
	public String success(){
		List<Opportunity> temp = opporService.view(request.getParameter("oppo_id").toString());
		oppor = temp.get(0);
		oppor.setOppo_status("3");
		opporService.update(oppor);
		
		//添加客户记录
		Client client = new Client();
		client.setClient_name(oppor.getOppo_clientName());
		client.setClient_clientmanage(oppor.getOppo_clientManage());
		clientService.add(client);
		
		return "view";
	}


	public Object getModel() {
		// TODO Auto-generated method stub
		return this.item;
	}

	public List<PlanItem> getPlanItem() {
		return planItem;
	}

	public void setPlanItem(List<PlanItem> planItem) {
		this.planItem = planItem;
	}

	public Plan getCurrentPlan() {
		return currentPlan;
	}

	public void setCurrentPlan(Plan currentPlan) {
		this.currentPlan = currentPlan;
	}

	public PlanItem getItem() {
		return item;
	}

	public void setItem(PlanItem item) {
		this.item = item;
	}

	public Opportunity getOppor() {
		return oppor;
	}

	public void setOppor(Opportunity oppor) {
		this.oppor = oppor;
	}

	public OpporService getOpporService() {
		return opporService;
	}

	public void setOpporService(OpporService opporService) {
		this.opporService = opporService;
	}

	public PlanService getPlanService() {
		return planService;
	}

	public void setPlanService(PlanService planService) {
		this.planService = planService;
	}
	public ClientService getClientService() {
		return clientService;
	}

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public boolean isHavePlanAuthor() {
		return havePlanAuthor;
	}

	public void setHavePlanAuthor(boolean havePlanAuthor) {
		this.havePlanAuthor = havePlanAuthor;
	}

	public boolean isHaveExecuteAuthor() {
		return haveExecuteAuthor;
	}

	public void setHaveExecuteAuthor(boolean haveExecuteAuthor) {
		this.haveExecuteAuthor = haveExecuteAuthor;
	}

	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

}
