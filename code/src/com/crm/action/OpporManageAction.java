package com.crm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.util.ServletContextAware;

import com.crm.service.OpporService;
import com.crm.service.RoleService;
import com.crm.service.UserService;
import com.crm.vo.Opportunity;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class OpporManageAction extends ActionSupport implements ModelDriven,ServletRequestAware{
	private List<Opportunity> oppors = new ArrayList<Opportunity>();
	private List<User> clientManagers = new ArrayList<User>();
	private Opportunity oppor = new Opportunity();	
	private User manager = new User();
	private User currentUser = new User();
	
	private OpporService opporService;
	private UserService userService;
	private RoleService roleService;
	
	private HttpServletRequest request;
	
	private boolean haveAddAuthor;
	private boolean haveModifyAuthor;
	private boolean haveDeleteAuthor;
	private boolean haveAssignAuthor;
	
	private boolean havePlanAuthor;
	private boolean haveExecuteAuthor;
	
	
	public String listAll() {
		currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"2") == true){
			haveAddAuthor = true;
		}
		else{
			haveAddAuthor = false;
		}
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"3") == true){
			haveModifyAuthor = true;
		}
		else{
			haveModifyAuthor = false;
		}
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"4") == true){
			haveDeleteAuthor = true;
		}else{
			haveDeleteAuthor = false;
		}
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"5") == true){
			haveAssignAuthor = true;
		}else{
			haveAssignAuthor = false;
		}
		
		oppors = opporService.findAll();
		
		return this.SUCCESS;
	}
	
	public String list(){
		if(oppor.getOppo_clientName() == null)
			oppor.setOppo_clientName("");
		
		if(oppor.getOppo_outline() == null)
			oppor.setOppo_outline("");
		
		if(oppor.getOppo_contact() == null)
			oppor.setOppo_contact("");
		
		oppors = opporService.findOppor(oppor.getOppo_clientName(), oppor.getOppo_outline(), oppor.getOppo_contact());
		
		return this.SUCCESS;
	}
	
	public String listPlan(){
		manager = (User)request.getSession().getAttribute("user");
		if(oppor.getOppo_clientName() == null)
			oppor.setOppo_clientName("");
		
		if(oppor.getOppo_outline() == null)
			oppor.setOppo_outline("");
		
		if(oppor.getOppo_contact() == null)
			oppor.setOppo_contact("");
		
		oppors = opporService.findOpporWithPlan(oppor.getOppo_clientName(), oppor.getOppo_outline(), oppor.getOppo_contact(),manager.getUser_id());
		
		return "plan";
	}
	
	public String view(){
		oppors = opporService.view(oppor.getOppo_id());
		oppor = oppors.get(0);
		clientManagers = userService.findClientManagers();
		
		return "view";
	}
	
	public String add(){
		oppor.setOppo_creator(currentUser);
		opporService.addOppor(oppor);
		oppors = opporService.findAll();
		
		return this.SUCCESS;
	}
	
	public String delete(){
		List<Opportunity> temp = opporService.view(oppor.getOppo_id());
		oppor = temp.get(0);
		opporService.deleteOppor(oppor);
		oppors = opporService.findAll();
		
		return this.SUCCESS;
	}
	
	public String update(){
		opporService.update(oppor);
		
		List<Opportunity> temp = opporService.view(oppor.getOppo_id());
		oppor = temp.get(0);
		
		return "view";
	}
	
	public String plan(){		
		currentUser = (User) request.getSession().getAttribute("user");
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
		
		manager = (User)request.getSession().getAttribute("user");
		
		if(manager.getUser_role().getRole_id().equals("3")){
			oppors = opporService.plan("");
		}else{
			oppors = opporService.plan(manager.getUser_id());
		}

		return "plan";
	}

	public Object getModel() {
		// TODO Auto-generated method stub
		return this.oppor;
	}

	public Opportunity getOppor() {
		return oppor;
	}


	public void setOppor(Opportunity oppor) {
		this.oppor = oppor;
	}

	public List<Opportunity> getOppors() {
		return oppors;
	}

	public void setOppors(List<Opportunity> oppors) {
		this.oppors = oppors;
	}

	public List<User> getClientManagers() {
		return clientManagers;
	}

	public void setClientManagers(List<User> clientManagers) {
		this.clientManagers = clientManagers;
	}

	public void setOpporService(OpporService opporService) {
		this.opporService = opporService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public User getManager() {
		return manager;
	}

	public void setManager(User manager) {
		this.manager = manager;
	}
	
	public boolean isHaveAddAuthor() {
		return haveAddAuthor;
	}

	public void setHaveAddAuthor(boolean haveAddAuthor) {
		this.haveAddAuthor = haveAddAuthor;
	}

	public boolean isHaveModifyAuthor() {
		return haveModifyAuthor;
	}

	public void setHaveModifyAuthor(boolean haveModifyAuthor) {
		this.haveModifyAuthor = haveModifyAuthor;
	}

	public boolean isHaveDeleteAuthor() {
		return haveDeleteAuthor;
	}

	public void setHaveDeleteAuthor(boolean haveDeleteAuthor) {
		this.haveDeleteAuthor = haveDeleteAuthor;
	}

	public boolean isHaveAssignAuthor() {
		return haveAssignAuthor;
	}

	public void setHaveAssignAuthor(boolean haveAssignAuthor) {
		this.haveAssignAuthor = haveAssignAuthor;
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
