package com.crm.service;

import java.util.Date;
import java.util.List;

import com.crm.dao.ClientDao;
import com.crm.dao.LoseDao;
import com.crm.vo.Client;
import com.crm.vo.Contact;
import com.crm.vo.LoseRecord;
import com.crm.vo.Opportunity;

public class LoseServiceImpl implements LoseService {
    private LoseDao loseDao;
	
	@Override
	public List findAll() {
		List list = loseDao.findAll();
		return list;
	}

	public LoseDao getLoseDao() {
		return loseDao;
	}

	public void setLoseDao(LoseDao loseDao) {
		this.loseDao = loseDao;
	}

	@Override
	public LoseRecord find(String id) {
		return loseDao.find(id);
	}

	@Override
	public void update(LoseRecord record) {
		if(record.getLose_status().equals("2")){
			record.setLose_verify_date(new Date());
		}
		loseDao.update(record);
	}

	@Override
	public List list(String lose_status, String client_name, String user_id) {
		List list = loseDao.list(lose_status,client_name,user_id);
		return list;
	}

	@Override
	public List searchByClientAndManager(String clientName, String clientManager) {
		List list = loseDao.searchByClientAndManager(clientName,clientManager);
		return list;
	}
	
	

}
