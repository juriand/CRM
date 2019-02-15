package com.crm.service;

import java.util.List;

import com.crm.dao.ClientDao;
import com.crm.vo.Client;
import com.crm.vo.CommuHistory;
import com.crm.vo.Contact;
import com.crm.vo.Opportunity;
import com.crm.vo.Order;

public class ClientServiceImpl implements ClientService {
    private ClientDao clientDao;
	
	@Override
	public List findAll() {
		List list = clientDao.findAll();
		return list;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}
	
	@Override
	public void add(Client client) {
		clientDao.add(client);
	}

	@Override
	public List findClient(String id) {
		List list = clientDao.findClient(id);
		return list;
	}


	@Override
	public void updateClient(Client client) {
		clientDao.updateClient(client);
	}

	@Override
	public List<Contact> findContact(String contactId) {
		List list = clientDao.findContact(contactId);
		return list;
	}

	@Override
	public void updateContact(Contact contact) {
		clientDao.updateContact(contact);
		
	}

	@Override
	public void deleteContact(Contact contact) {
		clientDao.deleteContact(contact);
		
	}

	@Override
	public String searchByLevel(String dictionary_id) {
		return clientDao.searchByLevel(dictionary_id);
	}

	@Override
	public String searchByCredit(String credit) {
		return clientDao.searchByCredit(credit);
	}

	@Override
	public String searchByCSR(String CSR) {
		return clientDao.searchByCSR(CSR);
	}

	@Override
	public void addContact(Contact contact) {
		clientDao.addContact(contact);
		
	}

	@Override
	public List<CommuHistory> findCommuhistory(String commuhistoryId) {
		List list = clientDao.findCommuhistory(commuhistoryId);
		return list;
	}

	@Override
	public void updateCommuhistory(CommuHistory commuHistory) {
		clientDao.updateCommuhistory(commuHistory);
		
	}

	@Override
	public void deleteCommuhistory(CommuHistory commuHistory) {
		clientDao.deleteCommuhistory(commuHistory);
		
	}

	@Override
	public void addCommuhistory(CommuHistory commuHistory) {
		clientDao.addCommuhistory(commuHistory);
		
	}

	@Override
	public List<Order> findOrder(String orderId) {
		List list = clientDao.findOrder(orderId);
		return list;
	}

	@Override
	public String getTotalMoney(String client_id, String search_year) {
		return clientDao.getTotalMoney(client_id,search_year);
	}

	@Override
	public List searchByClientName(String clientName) {
		// TODO Auto-generated method stub
		return clientDao.searchByClientName(clientName);
	}

}
