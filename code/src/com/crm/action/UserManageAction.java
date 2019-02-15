package com.crm.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.crm.service.DictionService;
import com.crm.service.DictionServiceImpl;
import com.crm.service.RoleService;
import com.crm.service.UserService;
import com.crm.vo.Opportunity;
import com.crm.vo.Role;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class UserManageAction extends ActionSupport implements ModelDriven,ServletRequestAware{
	private User user = new User();	
	private List<User> users = new ArrayList<User>();
	private List<Role> roles = new ArrayList<Role>();
	
	private UserService userService;
    private DictionService dicService;
    private RoleService roleService;
    
    private HttpServletRequest request;
    
    private boolean haveAuthor;
    
	public String login() throws IOException{	
		String result;
		List list = userService.findUser(user.getUser_id(), user.getUser_password());
		HttpServletRequest request=ServletActionContext.getRequest();
		if(list != null && list.size()>0) {
			user=(User)list.get(0);
		    result = "login_success"; 
		} else {
			result = "login_false";
		}
		String resultremind = "<script>alert('\"登录失败，用户名或密码错误\"');</script>";
		ActionContext.getContext().put("resultremind_login", resultremind);
		System.out.println(resultremind);
		HttpSession session = request.getSession();
		if(result.equals("login_success")){    
			session.setAttribute("user", user);
		}
		user = new User();
		
		return result;
	}
	
	public String exit(){
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		
		return "exit";
	}
	
	public String listAll(){
		User currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"1") == true){
			haveAuthor = true;
			
			users = userService.findAll();
			roles = roleService.findAll();
		}else{
			haveAuthor = false;
		}
		
		return "view";
	}
	
	public String list(){
		if(user.getUser_id() == null){
			user.setUser_id("");
		}
		if(user.getUser_role().getRole_id().equals("0")){
			user.setUser_role(new Role(""));
		}
		
		users = userService.find(user.getUser_id(),user.getUser_role(),user.getUser_nickname());
		
		return "view";
	}
	
	public String prepareAdd(){
		roles = roleService.findAll();
		
		return "add";
	}
	
	public String add(){
		userService.add(user);
		
		//更新页面
		roles = roleService.findAll();
		users = userService.findAll();
		
		return "view";
	}
	
	public String view(){
		List<User> temp =  userService.view(request.getParameter("user_id"));
		user = temp.get(0);
		
		return "detail";
	}
	
	public String update(){
		userService.update(user);
		
		//更新页面
		List<User> temp =  userService.view(user.getUser_id());
		user = temp.get(0);
		
		return "detail";
	}
	
	public String delete(){
		List<User> temp =  userService.view(request.getParameter("user_id"));
		user = temp.get(0);
		
		userService.delete(user);
		
		//更新页面
		users = userService.findAll();
		
		return "view";
	}

	public Object getModel() {
		return this.user;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public DictionService getDicService() {
		return dicService;
	}

	public void setDicService(DictionService dicService) {
		this.dicService = dicService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public boolean isHaveAuthor() {
		return haveAuthor;
	}

	public void setHaveAuthor(boolean haveAuthor) {
		this.haveAuthor = haveAuthor;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	

}
