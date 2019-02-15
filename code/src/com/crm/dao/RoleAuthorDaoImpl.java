package com.crm.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Authority;
import com.crm.vo.Role;
import com.crm.vo.RoleAuthorRelation;

public class RoleAuthorDaoImpl extends HibernateDaoSupport implements RoleAuthorDao{

	@Override
	public void addRelation(RoleAuthorRelation realtion) {
		this.getHibernateTemplate().save(realtion);
	}

	@Override
	public boolean confirm(String role_id, String author) {
		String hql = "from RoleAuthorRelation where ROLE_ID = '"+role_id+"'"
				+ "and AUTHORITY_ID = '"+author+"'";
		
		List list = this.getHibernateTemplate().find(hql);
		if(list.size() != 0)
			return true;
		else
			return false;
	}

	@Override
	public List getAllAuthorByRole(String role_id) {
		String hql = "from RoleAuthorRelation where ROLE_ID = '"+role_id+"'";	
		List list = this.getHibernateTemplate().find(hql);
		
		return list;
	}

	@Override
	public void deleteRelation(RoleAuthorRelation roleAuthorRelation) {
		this.getHibernateTemplate().delete(roleAuthorRelation);
		
	}


}
