package com.crm.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Authority;

public class AuthorDaoImpl extends HibernateDaoSupport implements AuthorDao{
	@Override
	public List findAll() {
		String hql = "from Authority";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public Authority find(String authority_id) {
		String hql = "from Authority where AUTHORITY_ID = '"+authority_id+"'";
		
		List list = this.getHibernateTemplate().find(hql);
		return (Authority)list.get(0);
	}

	@Override
	public void add(Authority author) {
		this.getHibernateTemplate().save(author);
	}

	@Override
	public void delete(Authority author) {
		this.getHibernateTemplate().delete(author);
	}

	@Override
	public void update(Authority author) {
		this.getHibernateTemplate().update(author);
	}

	@Override
	public List view(String id) {
		String hql = "from Authority where AUTHORITY_ID = '"+id+"'";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}
	
	@Override
	public List searchById(String authority_id) {
		String hql = "from Authority where AUTHORITY_ID like '%"+authority_id+"%'";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}


}
