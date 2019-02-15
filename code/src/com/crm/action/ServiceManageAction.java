package com.crm.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.crm.service.DictionService;
import com.crm.service.RoleService;
import com.crm.service.SerService;
import com.crm.service.UserService;
import com.crm.vo.Dictionary;
import com.crm.vo.Service;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ServiceManageAction extends ActionSupport implements ModelDriven{

	private List<Service> services = new ArrayList<Service>();
	private List<User> creators = new ArrayList<User>();
	private List<User> clientManagers = new ArrayList<User>();
	private List<User> conductors = new ArrayList<User>();
	private Service ser = new Service();
	private User currentUser = new User();
	
	private List<Dictionary> serviceType = new ArrayList<Dictionary>();
	
	private DictionService dicSer;
	private SerService service;
	private UserService userService;
	private RoleService roleService;
	
	private boolean haveAddAuthor;
	private boolean haveAssignAuthor;
	private boolean haveDealAuthor;
	private boolean haveFeedBackAuthor;
	private boolean haveArchivedAuthor;
	
	
	public User getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(User currentUser) {
		this.currentUser = currentUser;
	}

	public List<Dictionary> getServiceType() {
		return serviceType;
	}

	public void setServiceType(List<Dictionary> serviceType) {
		this.serviceType = serviceType;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public boolean isHaveAddAuthor() {
		return haveAddAuthor;
	}

	public void setHaveAddAuthor(boolean haveAddAuthor) {
		this.haveAddAuthor = haveAddAuthor;
	}

	public boolean isHaveAssignAuthor() {
		return haveAssignAuthor;
	}

	public void setHaveAssignAuthor(boolean haveAssignAuthor) {
		this.haveAssignAuthor = haveAssignAuthor;
	}

	public boolean isHaveDealAuthor() {
		return haveDealAuthor;
	}

	public void setHaveDealAuthor(boolean haveDealAuthor) {
		this.haveDealAuthor = haveDealAuthor;
	}

	public boolean isHaveFeedBackAuthor() {
		return haveFeedBackAuthor;
	}

	public void setHaveFeedBackAuthor(boolean haveFeedBackAuthor) {
		this.haveFeedBackAuthor = haveFeedBackAuthor;
	}

	public boolean isHaveArchivedAuthor() {
		return haveArchivedAuthor;
	}

	public void setHaveArchivedAuthor(boolean haveArchivedAuthor) {
		this.haveArchivedAuthor = haveArchivedAuthor;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public DictionService getDicSer() {
		return dicSer;
	}

	public void setDicSer(DictionService dicSer) {
		this.dicSer = dicSer;
	}
	@Override
	public Object getModel() {	
		return this.ser;
	}
	
	public List<Service> getServices() {
		return services;
	}

	public void setServices(List<Service> services) {
		this.services = services;
	}

	public List<User> getCreators() {
		return creators;
	}

	public void setCreators(List<User> creators) {
		this.creators = creators;
	}

	public List<User> getClientManagers() {
		return clientManagers;
	}

	public void setClientManagers(List<User> clientManagers) {
		this.clientManagers = clientManagers;
	}

	public List<User> getConductors() {
		return conductors;
	}

	public void setConductors(List<User> conductors) {
		this.conductors = conductors;
	}

	public Service getSer() {
		return ser;
	}

	public void setSer(Service ser) {
		this.ser = ser;
	}

	public SerService getService() {
		return service;
	}

	public void setService(SerService service) {
		this.service = service;
	}

	public String loadAllToSerAdd(){
		//权限认证
		HttpServletRequest request = ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		if (roleService.confirm(currentUser.getUser_role().getRole_id(), "8") == true){
			haveAddAuthor = true;
		}
		else{
			haveAddAuthor = false;
		}
		
		//加载服务类型
		String log;
		List<Dictionary> serList = findSerType();
		log = "loadSerTpSuceess";
		return log;
	}
	
	public String add(){
		service.addService(ser);
		List<Dictionary> serList = findSerType();
		services = service.findNewCreateAll(serList);
		return "loadSerTpSuceess";
	}
	
	public String loadAllToSerAssign(){
		//权限认证
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		if (roleService.confirm(currentUser.getUser_role().getRole_id(), "9") == true){
			haveAssignAuthor = true;
		}
		else{
			haveAssignAuthor = false;
		}
		
		List<Dictionary> serList = findSerType();
		services = service.findNewCreateAll(serList);
		clientManagers = userService.findClientManagers();
		HttpSession session = request.getSession();
		session.setAttribute("clientManagers", clientManagers);
		return this.SUCCESS;
	}
	
	public String loadAllToServiceDeal(){
		
		//权限认证
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		if (roleService.confirm(currentUser.getUser_role().getRole_id(), "10") == true){
			haveDealAuthor = true;
		}
		else{
			haveDealAuthor = false;
		}
		
		String log;
		List<Dictionary> serList = findSerType();
		services = service.findAllocatedAll(serList,currentUser.getUser_id());
		log = "loadServiceDealSuccess";
		return log;
	}
	
	public String loadAllToServiceFeed(){
		
		//权限认证
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		if (roleService.confirm(currentUser.getUser_role().getRole_id(), "11") == true){
			haveFeedBackAuthor = true;
		}
		else{
			haveFeedBackAuthor = false;
		}
		
		List<Dictionary> serList = findSerType();
		services = service.findDealedAll(serList,currentUser.getUser_id());
		return "loadServiceFeedSuccess";
	}
	
	public String loadAllToServiceArchived(){
		//权限认证
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		if (roleService.confirm(currentUser.getUser_role().getRole_id(), "12") == true){
			haveArchivedAuthor = true;
		}
		else{
			haveArchivedAuthor = false;
		}
		
		List<Dictionary> serList = findSerType();
		//判断是客户经理还是主管
		if (currentUser.getUser_role().getRole_id().equals("2")){
			services = service.findArchivedAll(serList,currentUser.getUser_id());
		}
		if (currentUser.getUser_role().getRole_id().equals("3")){
			services = service.findArchivedAllBySaleM(serList);
		}
		return "loadServiceArchivedSuccess";
	}
	
	
	public List findSerType(){
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		serviceType = dicSer.findValueByType("服务类型");
		session.setAttribute("serviceType", serviceType);
		return serviceType;
	}
	
	public String deleteNewCreate(){
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
		service.deleteService(ser);;
		List<Dictionary> serList = findSerType();
		services = service.findNewCreateAll(serList);		
		return this.SUCCESS;
	}
	
	public String listNewCreate(){
		if(ser.getService_client() == null)
			ser.setService_client("");
		
		if(ser.getService_outline() == null)
			ser.setService_outline("");
		
		if(ser.getService_type().getDictionary_id().equals("unknown"))
			ser.getService_type().setDictionary_id("");
		
		if(ser.getService_create_date() == null)
			ser.setService_create_date(null);
		
		services = service.findNewCreateService(ser.getService_client(), ser.getService_outline(), ser.getService_type().getDictionary_id(), ser.getService_create_date());
		return this.SUCCESS;
	}
	
	public String listAllocated(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		
		if(ser.getService_client() == null)
			ser.setService_client("");
		
		if(ser.getService_outline() == null)
			ser.setService_outline("");
		
		if(ser.getService_type().getDictionary_id().equals("unknown"))
			ser.getService_type().setDictionary_id("");
		
		if(ser.getService_create_date() == null)
			ser.setService_create_date(null);
		
		services = service.findAllocatedService(ser.getService_client(), ser.getService_outline(), ser.getService_type().getDictionary_id(), ser.getService_create_date(),currentUser.getUser_id());
		return "loadServiceDealSuccess";
	}
	
	public String listDealed(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		
		if(ser.getService_client() == null)
			ser.setService_client("");
		
		if(ser.getService_outline() == null)
			ser.setService_outline("");
		
		if(ser.getService_type().getDictionary_id().equals("unknown"))
			ser.getService_type().setDictionary_id("");
		
		if(ser.getService_create_date() == null)
			ser.setService_create_date(null);
		
		services = service.findDealedService(ser.getService_client(), ser.getService_outline(), ser.getService_type().getDictionary_id(), ser.getService_create_date(),currentUser.getUser_id());
		return "loadServiceFeedSuccess";
	}
	
	public String listArchived(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		
		if(ser.getService_client() == null)
			ser.setService_client("");
		
		if(ser.getService_outline() == null)
			ser.setService_outline("");
		
		if(ser.getService_type().getDictionary_id().equals("unknown"))
			ser.getService_type().setDictionary_id("");
		
		if(ser.getService_create_date() == null)
			ser.setService_create_date(null);
		
		if (currentUser.getUser_role().getRole_id().equals("2")){
			services = service.findArchivedService(ser.getService_client(), ser.getService_outline(), ser.getService_type().getDictionary_id(), ser.getService_create_date(),currentUser.getUser_id());
		}
		if (currentUser.getUser_role().getRole_id().equals("3")){
			services = service.findArchivedServiceBySaleM(ser.getService_client(), ser.getService_outline(), ser.getService_type().getDictionary_id(), ser.getService_create_date());
		}
		return "loadServiceArchivedSuccess";
	}
	
	public String allocate(){
		User clientManager = ser.getService_clientManager();
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
		ser.setService_clientManager(clientManager);
		service.updateServiceToAllocated(ser);
		List<Dictionary> serList = findSerType();
		services = service.findNewCreateAll(serList);
		return this.SUCCESS;
	}
	
	public String dealService(){
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
	    return "loadIntoDealIn";
	}
	
	public String updateDealedService(){
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		ser.setService_conductor(currentUser);
		service.updateServiceToDealed(ser);
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
		return "loadIntoDealIn";
	}
	
	public String feedBackService(){
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
		return "loadIntoFeedBackIn";
	}
	
	public String updateFeedBackedService(){
		HttpServletRequest request=ServletActionContext.getRequest();
		currentUser = (User) request.getSession().getAttribute("user");
		//根据满意度决定服务状态
		if (Integer.valueOf(ser.getService_satis_degree()).intValue() >= 3){
			service.updateServiceToArchived(ser);
		}
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
		return "loadIntoFeedBackIn";
	}
	
	public String ArchivedService(){
		List<Service> temp = service.view(ser.getService_id());
		ser = temp.get(0);
		return "loadIntoArchivedIn";
	}
}
