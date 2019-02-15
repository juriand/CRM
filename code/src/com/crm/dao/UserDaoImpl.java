package com.crm.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Role;
import com.crm.vo.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao{

	public List findUser(String id, String pwd) {
		// TODO Auto-generated method stub
		String hql = "from User where USER_ID = '"+id+"' and USER_PASSWORD='"+pwd+"'";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}
	
	@Override
	public List findAll() {
		String hql = "from User";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List findClientManagers() {
		String hql = "from User where USER_ROLE = '2' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List find(String user_id, Role user_role,String nickname) {
		String hql = "from User where USER_ID like '%"+user_id+"%' "
				+ "and USER_ROLE like '%"+user_role.getRole_id()+"%' "
				+ "and USER_NICKNAME like '%"+nickname+"%'";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void add(User user) {
		this.getHibernateTemplate().save(user);
	}

	@Override
	public List view(String id) {
		String hql = "from User where USER_ID = '"+id+"' ";
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void update(User user) {
		this.getHibernateTemplate().update(user);
	}

	@Override
	public void delete(User user) {
		this.getHibernateTemplate().delete(user);
	}

}
