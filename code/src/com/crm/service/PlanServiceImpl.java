package com.crm.service;

import java.util.Date;
import java.util.List;

import com.crm.dao.OpporDao;
import com.crm.dao.PlanDao;
import com.crm.dao.UserDao;
import com.crm.vo.Opportunity;
import com.crm.vo.Plan;
import com.crm.vo.PlanItem;


public class PlanServiceImpl implements PlanService{
	private PlanDao planDao;

	public void setPlanDao(PlanDao planDao) {
		this.planDao = planDao;
	}

	@Override
	public List findPlan(String planId) {
		List list = planDao.findPlan(planId);
		return list;
	}

	@Override
	public void addItem(PlanItem item) {
		planDao.addItem(item);
	}

	@Override
	public Plan addPlan(Plan plan) {
		return planDao.addPlan(plan);
	}

	@Override
	public List findPlanItem(String planId) {
		List list = planDao.findPlanItem(planId);
		return list;
	}

	@Override
	public void update(PlanItem item) {
		planDao.update(item);
	}

	@Override
	public List findPlanItemByItemID(String item_id) {
		List list = planDao.findPlanItemByItemID(item_id);
		return list;
	}

	@Override
	public void delete(PlanItem item) {
		planDao.delete(item);
	}
	
	

}
