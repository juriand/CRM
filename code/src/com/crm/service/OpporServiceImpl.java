package com.crm.service;

import java.util.Date;
import java.util.List;

import com.crm.dao.OpporDao;
import com.crm.dao.UserDao;
import com.crm.vo.Opportunity;
import com.crm.vo.Plan;


public class OpporServiceImpl implements OpporService{
	private OpporDao opporDao;
	
	public void setOpporDao(OpporDao opporDao) {
		this.opporDao = opporDao;
	}

	@Override
	public List findOppor(String clientName, String outline, String contact) {
		List list = opporDao.findOppor(clientName, outline, contact);
		return list;
	}

	@Override
	public List findAll() {
		List list = opporDao.findAll();
		return list;
	}

	@Override
	public void addOppor(Opportunity oppor) {
		oppor.setOppo_status("0");
		oppor.setOppo_createTime(new Date());
		oppor.setOppo_clientManage(null);
		oppor.setOppo_assignDate(null);
		oppor.setOppo_plan(null);
		
		opporDao.addOppor(oppor);
	}

	@Override
	public void deleteOppor(Opportunity oppor) {
		opporDao.deleteOppor(oppor);
	}

	@Override
	public List view(String id) {
		List list = opporDao.view(id);
		return list;
	}

	@Override
	public void update(Opportunity oppor) {
		if(oppor.getOppo_clientManage() != null && oppor.getOppo_plan() == null){
			oppor.setOppo_status("1");
			oppor.setOppo_assignDate(new Date());
		}
		opporDao.update(oppor);	
	}

	@Override
	public List plan(String id) {
		List list = opporDao.plan(id);
		return list;
	}

	@Override
	public List findOpporWithPlan(String oppo_clientName, String oppo_outline,
			String oppo_contact,String id) {
		List list = opporDao.findOpporWithPlan(oppo_clientName, oppo_outline, oppo_contact,id);
		return list;
	}

}
