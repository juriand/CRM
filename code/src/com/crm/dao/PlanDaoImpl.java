package com.crm.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Opportunity;
import com.crm.vo.Plan;
import com.crm.vo.PlanItem;


public class PlanDaoImpl extends HibernateDaoSupport implements PlanDao{
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	
	@Override
	public List findPlanItem(String planId) {
		String hql = "from PlanItem where PLAN_ITEM_PLAN = '"+planId+"' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void addItem(PlanItem item) {
		this.getHibernateTemplate().save(item);
	}

	@Override
	public Plan addPlan(Plan plan) {
		this.getHibernateTemplate().save(plan);
		
		return plan;
	}

	@Override
	public List findPlan(String planId) {
		String hql = "from Plan where PLAN_ID = '"+planId+"' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void update(PlanItem item) {
		this.getHibernateTemplate().update(item);
	}

	@Override
	public List findPlanItemByItemID(String item_id) {
		String hql = "from PlanItem where PLAN_ITEM_ID = '"+item_id+"' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void delete(PlanItem item) {
		this.getHibernateTemplate().delete(item);
	}


}
