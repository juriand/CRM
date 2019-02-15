package com.crm.dao;

import java.util.List;

import com.crm.vo.Opportunity;
import com.crm.vo.Plan;
import com.crm.vo.PlanItem;

public interface PlanDao {
	public List findPlanItem(String planId);
	public List findPlan(String planId);
	public void addItem(PlanItem item);
	public Plan addPlan(Plan plan);
	public void update(PlanItem item);
	public List findPlanItemByItemID(String item_id);
	public void delete(PlanItem item);

}
