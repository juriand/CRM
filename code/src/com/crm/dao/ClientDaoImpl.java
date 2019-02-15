package com.crm.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Client;
import com.crm.vo.CommuHistory;
import com.crm.vo.Contact;
import com.crm.vo.Order;

public class ClientDaoImpl extends HibernateDaoSupport implements ClientDao {

	@Override
	public List findAll() {
        String hql = "from Client";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void add(Client client) {
		this.getHibernateTemplate().save(client);
	}

	@Override
	public List findClient(String id) {
        String hql = "from Client where CLIENT_ID = '"+id+"'";
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List findContact(String contactId) {
		String hql = "from Contact where CONTACT_ID = '"+contactId+"'";
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void updateContact(Contact contact) {
		this.getHibernateTemplate().update(contact);
		
	}

	@Override
	public void deleteContact(Contact contact) {
		this.getHibernateTemplate().delete(contact);
	}

	@Override
	public List getClientId(String contact_id) {
		String hql = "select contact.contact_client.client_id from Contact contact where CONTACT_ID = '"+contact_id+"'";
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}


	@Override
	public void updateClient(Client client) {
		this.getHibernateTemplate().update(client);
	}

	@Override
	public String searchByLevel(String dictionary_id) {
		List results = this.getSession().createQuery("SELECT COUNT(*) AS NUM "
				+ "FROM Client "
				+ "WHERE client_level = :level "
				+ "GROUP BY client_level")
					.setString("level", dictionary_id)
					.list();
		
		if(results.size() == 0)
			return "0";
		else
			return (long)results.get(0)+"";
	}


	@Override
	public String searchByCredit(String credit) {
		List results = this.getSession().createQuery("SELECT COUNT(*) AS NUM "
				+ "FROM Client"
				+ "WHERE CLIENT_CREDIT = :credit "
				+ "GROUP BY CLIENT_CREDIT")
					.setString("credit", credit)
					.list();
		
		if(results.size() == 0)
			return "0";
		else
			return (long)results.get(0)+"";
	}


	@Override
	public String searchByCSR(String cSR) {
		List results = this.getSession().createQuery("SELECT COUNT(*) AS NUM "
				+ "FROM Client "
				+ "WHERE CLIENT_CSR = :csr "
				+ "GROUP BY CLIENT_CSR")
					.setString("csr", cSR)
					.list();
		
		if(results.size() == 0)
			return "0";
		else
			return (long)results.get(0)+"";
	}

	@Override
	public void addContact(Contact contact) {
		this.getHibernateTemplate().save(contact);
	}

	@Override
	public List findCommuhistory(String commuhistoryId) {

		String hql = "from CommuHistory where COMMUHISTORY_ID = '"+commuhistoryId+"'";
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void updateCommuhistory(CommuHistory commuHistory) {
		this.getHibernateTemplate().update(commuHistory);
		
	}

	@Override
	public void deleteCommuhistory(CommuHistory commuHistory) {
		this.getHibernateTemplate().delete(commuHistory);
	}

	@Override
	public void addCommuhistory(CommuHistory commuHistory) {
		this.getHibernateTemplate().save(commuHistory);
		
	}

	@Override
	public List findOrder(String orderId) {
		String hql = "from Order where HISTORYORDER_ID = '"+orderId+"'";
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public String getTotalMoney(String client_id,String search_year) {
		//设置时间
		Calendar c = Calendar.getInstance();
		c.set(Integer.parseInt(search_year),1,1);	
		Date begin = c.getTime();
		
		c.set(Integer.parseInt(search_year),12,31);
		Date end = c.getTime();
		
		String hql = "SELECT SUM(HISTORYORDER_TOTALNUM) "
				+ "FROM Order "
				+ "WHERE HISTORYORDER_CLIENT = ? "
				+ "and HISTORYORDER_DATE between ? AND ? "
				+ "GROUP BY HISTORYORDER_CLIENT";
		
		Object[] params = new Object[]{client_id,begin,end};
		List results = this.getHibernateTemplate().find(hql, params);

		if(results.size() == 0)
			return "0";
		else{
			return (long)results.get(0)+"";
		}
					
	}

	@Override
	public List searchByClientName(String clientName) {
		String hql = "from Client where CLIENT_NAME like '%"+clientName+"%'";
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}



}
