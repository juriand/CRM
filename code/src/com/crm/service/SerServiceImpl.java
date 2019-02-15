package com.crm.service;

import java.util.Date;
import java.util.List;

import com.crm.dao.ServiceDao;
import com.crm.vo.Dictionary;
import com.crm.vo.Service;

public class SerServiceImpl implements SerService{
    private ServiceDao serviceDao;
	public void setServiceDao(ServiceDao serviceDao) {
		this.serviceDao = serviceDao;
	}

	@Override
	public List findNewCreateService(String clientName, String outline, String type,
			Date create_date) {
		List list = serviceDao.findNewCreateService(clientName, outline, type, create_date);
		return list;
	}

	@Override
	public List findNewCreateAll(List<Dictionary> serviceType) {
		List list = serviceDao.findNewCreateAll(serviceType);
		return list;
	}

	@Override
	public void addService(Service service) {
//		service.setService_create_date(new Date());
		service.setService_clientManager(null);
		service.setService_assign_date(null);
		service.setService_handling(null);
		service.setService_handling_date(null);
		service.setService_conductor(null);
		service.setService_handling_result(null);
		service.setService_satis_degree(null);
		this.serviceDao.addService(service);
		
	}

	@Override
	public void deleteService(Service service) {
		this.serviceDao.deleteService(service);
	}

	@Override
	public List view(String id) {
		List list = this.serviceDao.view(id);
		return list;
	}

	@Override
	public void updateServiceToAllocated(Service service) {
		if (service != null){
			service.setService_status("已分配");
			service.setService_assign_date(new Date());
			this.serviceDao.updateServiceToAllocated(service);
		}
	}

	@Override
	public void updateServiceToDealed(Service service) {
		if (service != null){
			service.setService_status("已处理");
			service.setService_handling_date(new Date());
			this.serviceDao.updateServiceToDealed(service);
		}	
	}

	@Override
	public void updateServiceToArchived(Service service) {
		if (service != null){
			service.setService_status("已归档");
			this.serviceDao.updateServiceToDealed(service);
		}	
	}

	@Override
	public List findAll(List<Dictionary> serviceType) {
		List list = serviceDao.findAll(serviceType);
		return list;
	}

	@Override
	public List findAllocatedAll(List<Dictionary> serviceType,String clientManager_id) {
		List list = serviceDao.findAllocatedAll(serviceType,clientManager_id);
		return list;
	}

	@Override
	public List findAllocatedService(String clientName, String outline,
			String type, Date create_date,String clientManager_id) {
		List list = serviceDao.findAllocatedService(clientName, outline, type, create_date,clientManager_id);
		return list;
	}

	@Override
	public List findDealedAll(List<Dictionary> serviceType,
			String clientManager_id) {
		List list = serviceDao.findDealedAll(serviceType, clientManager_id);
		return list;
	}

	@Override
	public List findDealedService(String clientName, String outline,
			String type, Date create_date, String clientManager_id) {
		List list = serviceDao.findDealedService(clientName, outline, type, create_date, clientManager_id);
		return list;
	}


	@Override
	public String searchByTypeAndYear(String dictionary_id, String search_year) {
		return serviceDao.searchByTypeAndYear(dictionary_id,search_year);
	}

	@Override
	public List findArchivedAll(List<Dictionary> serviceType,
			String clientManager_id) {
		List list = serviceDao.findArchivedAll(serviceType, clientManager_id);
		return list;
	}

	@Override
	public List findArchivedService(String clientName, String outline,
			String type, Date create_date, String clientManager_id) {
		List list = serviceDao.findArchivedService(clientName, outline, type, create_date, clientManager_id);
		return list;
	}

	@Override
	public List findArchivedAllBySaleM(List<Dictionary> serviceType) {
		List list = serviceDao.findArchivedAllBySaleM(serviceType);
		return list;
	}

	@Override
	public List findArchivedServiceBySaleM(String clientName, String outline,
			String type, Date create_date) {
		List list = serviceDao.findArchivedServiceBySaleM(clientName, outline, type, create_date);
		return list;
	}

       
}
