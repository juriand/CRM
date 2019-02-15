package com.crm.service;

import java.util.List;

import com.crm.dao.UserDao;
import com.crm.vo.Role;
import com.crm.vo.User;


public class UserServiceImpl implements UserService{
	private UserDao userDao;
	public List findUser(String id, String pwd) {
		// TODO Auto-generated method stub
		List list = userDao.findUser(id, pwd);
		return list;
	}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List findAll() {
		List list = userDao.findAll();
		return list;
	}

	@Override
	public List findClientManagers() {
		List list = userDao.findClientManagers();
		return list;
	}

	@Override
	public List find(String user_id, Role user_role, String nickname) {
		List list = userDao.find(user_id,user_role,nickname);
		return list;
	}

	@Override
	public void add(User user) {
		userDao.add(user);
	}

	@Override
	public List view(String id) {
		List list = userDao.view(id);
		return list;
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public void delete(User user) {
		userDao.delete(user);
	}


}
