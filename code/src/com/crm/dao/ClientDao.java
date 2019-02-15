
package com.crm.dao;

import java.util.List;

import com.crm.vo.Client;
import com.crm.vo.CommuHistory;
import com.crm.vo.Contact;

public interface ClientDao {
	public List findAll();
	public void add(Client client);
	public List findClient(String id);	
	public List findContact(String contactId);
 	public void updateContact(Contact contact);
	public void deleteContact(Contact contact);
	public List getClientId(String contact_id);

	public void updateClient(Client client);
	public String searchByLevel(String dictionary_id);
	public String searchByCredit(String credit);
	public String searchByCSR(String cSR);
	public void addContact(Contact contact);
	public List findCommuhistory(String commuhistoryId);
	public void updateCommuhistory(CommuHistory commuHistory);
	public void deleteCommuhistory(CommuHistory commuHistory);
	public void addCommuhistory(CommuHistory commuHistory);
	public List findOrder(String orderId);
	public List searchByClientName(String clientName);
	public String getTotalMoney(String client_id, String search_year);
}

