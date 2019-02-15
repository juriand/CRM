package com.crm.dao;

import java.util.List;

import com.crm.vo.Opportunity;
import com.crm.vo.Plan;

public interface OpporDao {
	public List findOppor(String clientName,String outline, String contact);
	public List findAll();
	public List view(String id);
	public List plan(String id);
	public void addOppor(Opportunity oppor);
	public void deleteOppor(Opportunity oppor);
	public void update(Opportunity oppor);
	public List findOpporWithPlan(String oppo_clientName, String oppo_outline,String oppo_contact,String id);
}
