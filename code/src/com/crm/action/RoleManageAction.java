package com.crm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.AuthorService;
import com.crm.service.RoleService;
import com.crm.vo.Authority;
import com.crm.vo.Role;
import com.crm.vo.RoleAuthorRelation;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class RoleManageAction extends ActionSupport implements ModelDriven,ServletRequestAware{
	private Role role = new Role();	
	private List<Authority> authors = new ArrayList<Authority>();
	private List<Role> roles = new ArrayList<Role>();
	private String[] role_author;
	private String role_author_display="";
	
	
    private RoleService roleService;
    private AuthorService authorService;
    
    private HttpServletRequest request;
    
    private boolean haveAuthor;
    
	public String listAll(){
		User currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"24") == true){
			haveAuthor = true;
			
			roles = roleService.findAll();
		}else{
			haveAuthor = false;
		}

		return "view";
	}
	
	public String prepareAdd(){
		authors = authorService.findAll();
		request.setAttribute("list", authors);
		
		return "add";
	}
	
	public String add(){
		//增加角色
		roleService.add(role);
		
		//增加权限
		for(int i=0;i<role_author.length;i++){
			RoleAuthorRelation realtion = new RoleAuthorRelation(role);
			realtion.setAuthority(authorService.find(role_author[i]));
			roleService.addRelation(realtion);
		}
		
		//更新页面
		roles = roleService.findAll();
		
		return "view";
	}
	
	public String view(){
		role_author_display="";
				
		role =  roleService.view(request.getParameter("role_id"));
		
		//获取所有权限
		List<RoleAuthorRelation> relations = roleService.getAllAuthorByRole(role.getRole_id());
		for(int i=0;i<relations.size();i++){
			role_author_display = role_author_display+authorService.find(relations.get(i).getAuthority().getAuthority_id()).getAuthority_name()+"\n";
		}
		
		authors = authorService.findAll();
		request.setAttribute("list", authors);
		request.setAttribute("role_author_display", role_author_display);
		
		return "detail";
	}
	
	public String update(){
		roleService.update(role);
		
		//删除所有权限
		List<RoleAuthorRelation> relations = roleService.getAllAuthorByRole(role.getRole_id());
		for(int i=0;i<relations.size();i++){
			roleService.deleteRelation(relations.get(i));
		}
		
		//增加新权限
		for(int i=0;i<role_author.length;i++){
			RoleAuthorRelation realtion = new RoleAuthorRelation(role);
			realtion.setAuthority(authorService.find(role_author[i]));
			roleService.addRelation(realtion);
		}
		
		//更新页面
		role_author_display = "";
		List<RoleAuthorRelation> relations1 = roleService.getAllAuthorByRole(role.getRole_id());
		for(int i=0;i<relations1.size();i++){
			role_author_display = role_author_display+authorService.find(relations1.get(i).getAuthority().getAuthority_id()).getAuthority_name()+"\n";
		}
		request.setAttribute("role_author_display", role_author_display);
		request.setAttribute("list", authors);
		role =  roleService.view(role.getRole_id());

		return "detail";
	}
	
	public String delete(){
		role =  roleService.view(request.getParameter("role_id"));
		
		//删除所有权限
		List<RoleAuthorRelation> relations = roleService.getAllAuthorByRole(role.getRole_id());
		for(int i=0;i<relations.size();i++){
			roleService.deleteRelation(relations.get(i));
		}
		
		roleService.delete(role);
		
		//更新页面
		roles = roleService.findAll();
		
		return "view";
	}

	public Object getModel() {
		return this.role;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Authority> getAuthors() {
		return authors;
	}

	public void setAuthors(List<Authority> authors) {
		this.authors = authors;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public AuthorService getAuthorService() {
		return authorService;
	}

	public void setAuthorService(AuthorService authorService) {
		this.authorService = authorService;
	}
	
	public String[] getRole_author() {
		return role_author;
	}

	public void setRole_author(String[] role_author) {
		this.role_author = role_author;
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
