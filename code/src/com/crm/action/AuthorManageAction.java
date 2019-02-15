package com.crm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.AuthorService;
import com.crm.service.RoleService;
import com.crm.vo.Authority;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class AuthorManageAction extends ActionSupport implements ModelDriven,ServletRequestAware{
	private Authority author = new Authority();	
	private List<Authority> authors = new ArrayList<Authority>();
	
    private RoleService roleService;
    private AuthorService authorService;
    
    private HttpServletRequest request;
    
    private boolean haveAuthor;
    
	public String listAll(){
		User currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"25") == true){
			haveAuthor = true;
			authors = authorService.findAll();
		}else{
			haveAuthor = false;
		}

		return "view";
	}
	
	public String list(){
		if(author.getAuthority_id() == null){
			author.setAuthority_id("");
		}
		
		authors = authorService.searchById(author.getAuthority_id());
		
		return "view";
	}
	
	public String add(){
		authorService.add(author);
		
		//更新页面
		authors = authorService.findAll();
		
		return "view";
	}
	
	public String view(){
		List<Authority> temp =  authorService.view(request.getParameter("authority_id"));
		author = temp.get(0);
		
		return "detail";
	}
	
	public String update(){
		authorService.update(author);
		
		//更新页面
		List<Authority> temp =  authorService.view(author.getAuthority_id());
		author = temp.get(0);
		
		return "detail";
	}
	
	public String delete(){
		List<Authority> temp =  authorService.view(request.getParameter("authority_id"));
		author = temp.get(0);
		
		authorService.delete(author);
		
		//更新页面
		authors = authorService.findAll();
		
		return "view";
	}

	public Object getModel() {
		return this.author;
	}

	public Authority getAuthor() {
		return author;
	}

	public void setAuthor(Authority author) {
		this.author = author;
	}

	public List<Authority> getAuthors() {
		return authors;
	}

	public void setAuthors(List<Authority> authors) {
		this.authors = authors;
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
