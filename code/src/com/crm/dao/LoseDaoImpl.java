package com.crm.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;







import com.crm.vo.LoseRecord;

public class LoseDaoImpl extends HibernateDaoSupport implements LoseDao {

	@Override
	public List findAll() {
        String hql = "from LoseRecord";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public LoseRecord find(String id) {
		String hql = "from LoseRecord where LOSE_ID = '"+id+"'";
		
		List list = this.getHibernateTemplate().find(hql);
		
		return (LoseRecord)list.get(0);
	}

	@Override
	public void update(LoseRecord record) {
		this.getHibernateTemplate().update(record);
	}

	@Override
	public List list(String lose_status, String client_name, String user_id) {
		String hql = "from LoseRecord l,Client c,User u "
				+ "where l.lose_status like '%"+lose_status+"%' "
				+ "and l.lose_client = c.client_id and c.client_clientmanage = u.user_id "
				+ "and c.client_name like '%"+client_name+"%' "
				+ "and u.user_id like '%"+user_id+"%' ";
		
		Query query = this.getSession().createQuery(hql);
		List<Object> result = new ArrayList<Object>();
		List list = query.list();
		Iterator ir = list.iterator();
		while (ir.hasNext()) {
			Object[ ] objs = (Object[ ]) ir.next();
			result.add(objs[0]);
		}
		
		return result;
	}

	@Override
	public List searchByClientAndManager(String clientName, String clientManager) {
		String hql = "from LoseRecord l,Client c,User u "
				+ "where l.lose_client = c.client_id and c.client_clientmanage = u.user_id "
				+ "and c.client_name like '%"+clientName+"%' "
				+ "and u.user_id like '%"+clientManager+"%' ";
		
		Query query = this.getSession().createQuery(hql);
		List<Object> result = new ArrayList<Object>();
		List list = query.list();
		Iterator ir = list.iterator();
		while (ir.hasNext()) {
			Object[ ] objs = (Object[ ]) ir.next();
			result.add(objs[0]);
		}
		
		return result;
	}


}
