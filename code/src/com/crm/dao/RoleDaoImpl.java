package com.crm.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Authority;
import com.crm.vo.Role;

public class RoleDaoImpl extends HibernateDaoSupport implements RoleDao{
	@Override
	public List findAll() {
		String hql = "from Role";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void update(Role role) {
		this.getHibernateTemplate().update(role);
	}

	@Override
	public void delete(Role role) {
		this.getHibernateTemplate().delete(role);
	}

	@Override
	public Role view(String id) {
		String hql = "from Role where ROLE_ID = '"+id+"' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return (Role)list.get(0);
	}

	@Override
	public void add(Role role) {
		this.getHibernateTemplate().save(role);
	}


}
