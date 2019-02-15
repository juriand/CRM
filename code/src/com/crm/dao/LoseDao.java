
package com.crm.dao;

import java.util.List;

import com.crm.vo.Client;
import com.crm.vo.Contact;
import com.crm.vo.LoseRecord;

public interface LoseDao {
	public List findAll();
	public LoseRecord find(String id);
	public void update(LoseRecord record);
	public List list(String lose_status, String client_name, String user_id);
	public List searchByClientAndManager(String clientName, String clientManager);

}

