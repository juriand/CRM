package com.crm.service;

import java.util.List;

import com.crm.vo.Client;
import com.crm.vo.CommuHistory;
import com.crm.vo.Contact;
import com.crm.vo.Opportunity;
import com.crm.vo.Order;

public interface ClientService {
	public List findAll();
	public void add(Client client);
	public List findClient(String id);

	public void updateClient(Client client);
	public List<Contact> findContact(String contactId);
	public void updateContact(Contact contact);
	public void deleteContact(Contact contact);
	public String searchByLevel(String dictionary_id);
	public String searchByCredit(String credit);
	public String searchByCSR(String CSR);
	public void addContact(Contact contact);
	public List<CommuHistory> findCommuhistory(String commuhistoryId);
	public void updateCommuhistory(CommuHistory commuHistory);
	public void deleteCommuhistory(CommuHistory commuHistory);
	public void addCommuhistory(CommuHistory commuHistory);
	public List<Order> findOrder(String orderId);
	public List searchByClientName(String clientName);
	public String getTotalMoney(String client_id, String search_year);
}
