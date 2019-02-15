package com.crm.dao;

import java.util.Date;
import java.util.List;

import com.crm.vo.Dictionary;
import com.crm.vo.Service;

public interface ServiceDao{
	public List findNewCreateService(String clientName,String outline,String type,Date create_date);
	public List findAllocatedService(String clientName,String outline,String type,Date create_date,String clientManager_id);
	public List findDealedService(String clientName,String outline,String type,Date create_date,String clientManager_id);
	public List findArchivedService(String clientName,String outline,String type,Date create_date,String clientManager_id);
	public List findArchivedServiceBySaleM(String clientName,String outline,String type,Date create_date);
	public List findAll(List<Dictionary> serviceType);
	public List findNewCreateAll(List<Dictionary> serviceType);
	public List findAllocatedAll(List<Dictionary> serviceType,String clientManager_id);
	public List findDealedAll(List<Dictionary> serviceType,String clientManager_id);
	public List findArchivedAll(List<Dictionary> serviceType,String clientManager_id);
	public List findArchivedAllBySaleM(List<Dictionary> serviceType);
	public void addService(Service service);
	public void deleteService(Service service);
	public void updateServiceToAllocated(Service service);
	public void updateServiceToDealed(Service service);
	public void updateServiceToArchived(Service service);
	public List view(String id);
	public String searchByTypeAndYear(String dictionary_id, String search_year);
}
