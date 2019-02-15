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


public class OpporDaoImpl extends HibernateDaoSupport implements OpporDao{
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	@Override
	public List findOppor(String clientName, String outline, String contact) {
		String hql = "from Opportunity where OPPORTUNITY_CLIENTNAME like '%"+clientName+"%' "
				+ "and OPPORTUNITY_OUTLINE like '%"+outline+"%' "
				+ "and OPPORTUNITY_CONTACT like '%"+contact+"%' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List findAll() {
		String hql = "from Opportunity";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void addOppor(Opportunity oppor) {
		this.getHibernateTemplate().save(oppor);
	}

	@Override
	public void deleteOppor(Opportunity oppor) {
		this.getHibernateTemplate().delete(oppor);
	}

	@Override
	public List view(String id) {
		String hql = "from Opportunity where OPPORTUNITY_ID = '"+id+"' ";
		System.out.println(hql);
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void update(Opportunity oppor) {
		this.getHibernateTemplate().update(oppor);
	}

	@Override
	public List plan(String id) {
		String hql = "";
		if(id.equals("")){
			hql = "from Opportunity where OPPORTUNITY_STATUS <> '0' ";
		}else{
			hql = "from Opportunity where OPPORTUNITY_CLIENTMANAGE = '"+id+"' "
					+ "and  OPPORTUNITY_STATUS <> '0' ";
		}

		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List findOpporWithPlan(String oppo_clientName, String oppo_outline,
			String oppo_contact,String id) {
		String hql = "from Opportunity where OPPORTUNITY_CLIENTNAME like '%"+oppo_clientName+"%' "
				+ "and OPPORTUNITY_OUTLINE like '%"+oppo_outline+"%' "
				+ "and OPPORTUNITY_CONTACT like '%"+oppo_contact+"%' "
				+ "and OPPORTUNITY_STATUS <> '0' "
				+ "and OPPORTUNITY_CLIENTMANAGE = '"+id+"' ";

		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

}
