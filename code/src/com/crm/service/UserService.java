package com.crm.service;

import java.util.List;

import com.crm.vo.Role;
import com.crm.vo.User;

public interface UserService {
	public List findUser(String id,String pwd);
	public List findAll();
	public List findClientManagers();
	public List find(String user_id, Role user_role, String nickname);
	public void add(User user);
	public List view(String id);
	public void update(User user);
	public void delete(User user);
}
