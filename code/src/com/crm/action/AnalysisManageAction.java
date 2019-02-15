package com.crm.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.AuthorService;
import com.crm.service.ClientService;
import com.crm.service.DictionService;
import com.crm.service.LoseService;
import com.crm.service.RoleService;
import com.crm.service.SerService;
import com.crm.vo.Authority;
import com.crm.vo.Client;
import com.crm.vo.Dictionary;
import com.crm.vo.LoseRecord;
import com.crm.vo.Order;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class AnalysisManageAction extends ActionSupport implements ServletRequestAware{ 
	private User currentUser = new User();
	private List<Dictionary> dics = new ArrayList<Dictionary>();
	private List<LoseRecord> records = new ArrayList<LoseRecord>();
	private List<String> clientNum = new ArrayList<String>();
	private List<Client> clients = new ArrayList<Client>();
	
	private String search_type = "0";
	private String search_year = "2016";
	private String clientName = "";
	private String clientManager = "";
	
	private RoleService roleService;
	private DictionService dictionService;
	private ClientService clientService;
	private SerService serService;
	private LoseService loseService;
	
	private HttpServletRequest request;
	
	private boolean haveAuthor;
    
    public String contribution(){
    	currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"20") == true){
			haveAuthor = true;
			
			if(clientName.equals("")){
				clients = clientService.findAll();
			}else{
				clients = clientService.searchByClientName(clientName);
			}
			
			//获取总金额	
			for(int i=0;i<clients.size();i++){
				clients.get(i).setClient_totalMoney(Double.parseDouble(clientService.getTotalMoney(clients.get(i).getClient_id(),search_year)));
			}
		}
		else{
			haveAuthor = false;
		}
		
		
    	
    	return "contribution";
    }
    
    public String composition(){
    	currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"20") == true){
			haveAuthor = true;
		}
		else{
			haveAuthor = false;
		}
		
		search_type = this.getSearch_type();
		
		//不同报表方式
		if(search_type.equals("0")){
			dics = dictionService.findValueByType("客户等级");
			
			for(int i=0;i<dics.size();i++){
				dics.get(i).setDictionary_value(clientService.searchByLevel(dics.get(i).getDictionary_id()));
			}
			
		}else if(search_type.equals("1")){
			clientNum.clear();
			for(int i=0;i<6;i++){
				clientNum.add(clientService.searchByCredit(i+""));
			}
			
		}else if(search_type.equals("2")){
			clientNum.clear();
			for(int i=0;i<6;i++){
				clientNum.add(clientService.searchByCSR(i+""));
			}
		}
		request.setAttribute("type", search_type);
    	
    	return "composition";
    }
    
    public String service(){
    	currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"20") == true){
			haveAuthor = true;
		}
		else{
			haveAuthor = false;
		}
		
		dics = dictionService.findValueByType("服务类型");
		
		for(int i=0;i<dics.size();i++){
			dics.get(i).setDictionary_value(serService.searchByTypeAndYear(dics.get(i).getDictionary_id(),search_year));
		}
		
		request.setAttribute("year", search_year);
		
		search_year="2016";
    	
    	return "service";
    }
    
    public String lose(){
    	currentUser = (User) request.getSession().getAttribute("user");
		if(roleService.confirm(currentUser.getUser_role().getRole_id(),"20") == true){
			haveAuthor = true;
		}
		else{
			haveAuthor = false;
		}
		
		if(clientName == null){
			clientName = "";
		}
		if(clientManager == null){
			clientManager = "";
		}
		records = loseService.searchByClientAndManager(clientName,clientManager);
		clientName = "";
		
    	return "lose";
    }

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public DictionService getDictionService() {
		return dictionService;
	}

	public void setDictionService(DictionService dictionService) {
		this.dictionService = dictionService;
	}

	public ClientService getClientService() {
		return clientService;
	}

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}

	public boolean isHaveAuthor() {
		return haveAuthor;
	}

	public void setHaveAuthor(boolean haveAuthor) {
		this.haveAuthor = haveAuthor;
	}

	public User getCurrentUser() {
		return currentUser;
	}

	public void setCurrentUser(User currentUser) {
		this.currentUser = currentUser;
	}

	public List<Dictionary> getDics() {
		return dics;
	}

	public void setDics(List<Dictionary> dics) {
		this.dics = dics;
	}

	public List<String> getClientNum() {
		return clientNum;
	}

	public void setClientNum(List<String> clientNum) {
		this.clientNum = clientNum;
	}

	public String getSearch_type() {
		return search_type;
	}

	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}

	public SerService getSerService() {
		return serService;
	}

	public void setSerService(SerService serService) {
		this.serService = serService;
	}
	
	public LoseService getLoseService() {
		return loseService;
	}

	public void setLoseService(LoseService loseService) {
		this.loseService = loseService;
	}

	public String getSearch_year() {
		return search_year;
	}

	public void setSearch_year(String search_year) {
		this.search_year = search_year;
	}

	public List<LoseRecord> getRecords() {
		return records;
	}

	public void setRecords(List<LoseRecord> records) {
		this.records = records;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getClientManager() {
		return clientManager;
	}

	public void setClientManager(String clientManager) {
		this.clientManager = clientManager;
	}

	public List<Client> getClients() {
		return clients;
	}

	public void setClients(List<Client> clients) {
		this.clients = clients;
	}
	
	
}
