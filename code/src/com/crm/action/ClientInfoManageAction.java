package com.crm.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.ClientService;
import com.crm.service.DictionService;
import com.crm.vo.Client;
import com.crm.vo.CommuHistory;
import com.crm.vo.Contact;
import com.crm.vo.Dictionary;
import com.crm.vo.Order;
import com.opensymphony.xwork2.ActionSupport;

public class ClientInfoManageAction extends ActionSupport implements ServletRequestAware{
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private HttpServletRequest request;
	private List<Client> clients = new ArrayList<Client>();
    private Client client;
    private Contact contact;
    private CommuHistory commuHistory;
    private Order historyOrder;
	private ClientService clientService;
	private DictionService dictionService;
	private List<Dictionary> areas = new ArrayList<Dictionary>();
	private List<Dictionary> clientLevels = new ArrayList<Dictionary>();
	private String date;
	//private List<String> testJson;
	
	
	public String initAreasDics(){
		areas = dictionService.findValueByType("地区");
		clientLevels = dictionService.findValueByType("客户等级");
		if(areas!=null&&areas.size()!=0&&clientLevels!=null&&clientLevels.size()!=0){
			return "init_success";
		}
		return "error";
	}
	

	public String listAll(){
		clients = clientService.findAll();
		return "listall_success";
	}
	
	public String showClient(){
		
		
		String clientId = request.getParameter("clientid");
		if(clientId!=null){
			if(sychroClient(clientId).equals("sychroClient_success")){
				return "showclient_success";
			}
		}
		if(client!=null&&client.getClient_id()!=null){
			return "showclient_success";
		}
		return "error";
		
	}
	
	public String updateClient(){
		String clientId = client.getClient_id();
		clientService.updateClient(client);
		if(sychroClient(clientId).equals("sychroClient_success")){
			return "updateClient_success";
		}
		return "error";
	}
	
	
	public String showContact(){
		if(sychroClient(client.getClient_id()).equals("sychroClient_success")){
			return "showContact_success";
		}
		return "error";
	}
	
	public String showContactInfo(){
		
		String contactId = request.getParameter("contactid");
		if(contactId!=null){
			List<Contact> contacts = new ArrayList<Contact>();
			contacts = clientService.findContact(contactId);
			if(contacts!=null&&contacts.size()!=0){
				contact = contacts.get(0);
				return "showContactInfo_success";
			}
		}
		if(contact!=null&&contact.getContact_id()!=null){
			return "showContactInfo_success";
		}
		
		return "error";
	}
	
	
	public String updateContact(){
		String clientId = contact.getContact_client().getClient_id();
		clientService.updateContact(contact);
		if(sychroClient(clientId).equals("sychroClient_success")){
			return "updateContact_success";
		}
		return "error";
				
	}
	
	
	//删除联系人
	public String deleteContact(){
		String clientId = "";
		if(contact!=null&&contact.getContact_id()!=null){
			clientId = contact.getContact_client().getClient_id();
			clientService.deleteContact(contact);
			contact=null;
			if(sychroClient(clientId).equals("sychroClient_success")){
				return "deleteContact_success";
			}else{
				return "error";
			}
		}
		return "deleteContact_success";
	}
	
	public String addContact(){
		if(contact==null){
			return "addContact_success";
		}
		if(client!=null){
			contact.setContact_client(client);
			clientService.addContact(contact);
			contact=null;
			if(sychroClient(client.getClient_id()).equals("sychroClient_success")){
				return "addContact_success";
			}
		}
		return "error";
		
	}
	
	
	public String showCommuHistory(){
		if(sychroClient(client.getClient_id()).equals("sychroClient_success")){
			return "showCommuHistory_success";
		}
		return "error";
	}
	
	public String showCommuhistoryInfo(){
		String commuhistoryId = request.getParameter("commuhistoryid");
		if(commuhistoryId!=null){
			List<CommuHistory> commuhistorys = new ArrayList<CommuHistory>();
			commuhistorys = clientService.findCommuhistory(commuhistoryId);
			if(commuhistorys!=null&&commuhistorys.size()!=0){
				commuHistory = commuhistorys.get(0);
				date = sdf.format(commuHistory.getCommuHistory_date());
				return "showCommuhistoryInfo_success";
			}
		}
		if(commuHistory!=null&&commuHistory.getCommuHistory_id()!=null){
			return "showCommuhistoryInfo_success";
		}
		return "error";
	}
	
    public String updateCommuhistory(){
    	String clientId = commuHistory.getCommuHistory_client().getClient_id();
		clientService.updateCommuhistory(commuHistory);
		date = sdf.format(commuHistory.getCommuHistory_date());
		if(sychroClient(clientId).equals("sychroClient_success")){
			return "updateCommuhistory_success";
		}
		return "error";
	}
    
    public String deleteCommuhistory(){
    	String clientId = "";
		if(commuHistory!=null&&commuHistory.getCommuHistory_id()!=null){
			clientId = commuHistory.getCommuHistory_client().getClient_id();
			clientService.deleteCommuhistory(commuHistory);
			if(sychroClient(clientId).equals("sychroClient_success")){
				return "deleteCommuhistory_success";
			}else{
				return "error";
			}
		}
		return "deleteCommuhistory_success";
    }
    
    public String addCommuhistory(){
	   //避免刷新报错。。
        if(commuHistory==null){
			return "addCommuhistory_success";
	    }
	   
		if(client!=null){
			commuHistory.setCommuHistory_client(client);
			clientService.addCommuhistory(commuHistory);
			commuHistory=null;
			if(sychroClient(client.getClient_id()).equals("sychroClient_success")){
				return "addCommuhistory_success";
			}
		}
		return "error";
   }
    
    
    public String showOrder(){
    	if(sychroClient(client.getClient_id()).equals("sychroClient_success")){
			return "showOrder_success";
		}
		return "error";
    }
    
    
    public String showOrderInfo(){
		String orderId = request.getParameter("orderid");
		if(orderId!=null){
			List<Order> orders = new ArrayList<Order>();
			orders = clientService.findOrder(orderId);
			if(orders!=null&&orders.size()!=0){
				historyOrder = orders.get(0);
				date = sdf.format(historyOrder.getOrder_date());
				return "showOrderInfo_success";
			}
		}
		if(historyOrder!=null&&historyOrder.getOrder_id()!=null){
			return "showOrderInfo_success";
		}
		return "error";
    }
	
	
	
	//从数据库查找client对象
	public String sychroClient(String clientId){
		List<Client> clients2 = new ArrayList<Client>();
		if(clientId!=null){
			clients2 = clientService.findClient(clientId);
			if(clients2!=null&&clients2.size()!=0){
				client = clients2.get(0);
				return "sychroClient_success";
			}
		}
		return "error";
	}
	

	
	
	
	
	

//
//	public List<String> getTestJson() {
//		return testJson;
//	}
//
//
//	public void setTestJson(List<String> testJson) {
//		this.testJson = testJson;
//	}


	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public List<Client> getClients() {
		return clients;
	}

	public void setClients(List<Client> clients) {
		this.clients = clients;
	}

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}

	public void setDictionService(DictionService dictionService) {
		this.dictionService = dictionService;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}
	
	

	public Contact getContact() {
		return contact;
	}


	public void setContact(Contact contact) {
		this.contact = contact;
	}
	
	


	public CommuHistory getCommuHistory() {
		return commuHistory;
	}


	public void setCommuHistory(CommuHistory commuHistory) {
		this.commuHistory = commuHistory;
	}
	
	


	public Order getHistoryOrder() {
		return historyOrder;
	}


	public void setHistoryOrder(Order historyOrder) {
		this.historyOrder = historyOrder;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public List<Dictionary> getAreas() {
		return areas;
	}
	
//
//	public void setAreas(List<Dictionary> areas) {
//		this.areas = areas;
//	}

	public List<Dictionary> getClientLevels() {
		return clientLevels;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	
//
//	public void setClientLevels(List<Dictionary> clientLevels) {
//		this.clientLevels = clientLevels;
//	}
//	
	


//	public Map<String, String> getResult() {
//		return result;
//	}
//
//
//	public void setResult(Map<String, String> result) {
//		this.result = result;
//	}


	
	
	
	

	
	
	
	
	

}
