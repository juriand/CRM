package com.crm.dao;

import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Dictionary;
import com.crm.vo.Service;

public class ServiceImpl extends HibernateDaoSupport implements ServiceDao{

	@Override
	public List findNewCreateService(String clientName, String outline, String type,
			Date create_date) {
		String hql;
		List list;
		String status = "新创建";
		if (create_date == null){
			hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
					+ "and SERVICE_OUTLINE like '%"+outline+"%' "
					+ "and SERVICE_TYPE like '%"+type+"%' "
				    + "and SERVICE_STATUS like '%"+status+"%' ";
			list=getHibernateTemplate().find(hql);
		}else{
			Calendar c = Calendar.getInstance();
			c.setTime(create_date); 
			c.add(c.HOUR, 23);
			c.add(c.MINUTE, 59);
			c.add(c.SECOND, 59);
			Date newCreateDate = c.getTime();
			 hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
					+ "and SERVICE_OUTLINE like '%"+outline+"%' "
					+ "and SERVICE_TYPE like '%"+type+"%' "
					+ "and SERVICE_CREATE_DATE between ? and ?"
				    + " and SERVICE_STATUS like '%"+status+"%' ";
			 Object[] params = new Object[]{create_date,newCreateDate};
			 list=getHibernateTemplate().find(hql, params);
		}
		return list;
	}

	@Override
	public List findNewCreateAll(List<Dictionary> serviceType) {
        String hql = "from Service";	
		List<Service> list = this.getHibernateTemplate().find(hql);
		Service temp;
		Dictionary dic;
		for (int i = 0;i < list.size();i++){
			temp = (Service)list.get(i);
			for (int j = 0;j < serviceType.size();j++){
				dic = (Dictionary)serviceType.get(j);
				if (temp.getService_type().getDictionary_id().equals(dic.getDictionary_id())){
					temp.getService_type().setDictionary_value(dic.getDictionary_value());
				}
			}
		}
		Iterator<Service> iter = list.iterator();
		while(iter.hasNext()){
			temp = iter.next();
			if (!temp.getService_status().equals("新创建")){
				iter.remove();
			}
		}
		return list;
	}

	@Override
	public void addService(Service service) {
		this.getHibernateTemplate().save(service);	
	}

	@Override
	public void deleteService(Service service) {
		this.getHibernateTemplate().delete(service);
	}

	@Override
	public List view(String id) {
		String hql = "from Service where SERVICE_ID = '"+id+"' ";
		System.out.println(hql);
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void updateServiceToAllocated(Service service) {
		this.getHibernateTemplate().update(service);
	}

	@Override
	public void updateServiceToDealed(Service service) {
		this.getHibernateTemplate().update(service);
	}

	@Override
	public void updateServiceToArchived(Service service) {
		this.getHibernateTemplate().update(service);
	}

	@Override
	public List findAll(List<Dictionary> serviceType) {
		 String hql = "from Service";	
			List<Service> list = this.getHibernateTemplate().find(hql);
			Service temp;
			Dictionary dic;
			for (int i = 0;i < list.size();i++){
				temp = (Service)list.get(i);
				for (int j = 0;j < serviceType.size();j++){
					dic = (Dictionary)serviceType.get(j);
					if (temp.getService_type().getDictionary_id().equals(dic.getDictionary_id())){
						temp.getService_type().setDictionary_value(dic.getDictionary_value());
					}
				}
			}
		return list;
	}

	@Override
	public List findAllocatedAll(List<Dictionary> serviceType,String clientManager_id) {
		String hql = "from Service where SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";	
		List<Service> list = this.getHibernateTemplate().find(hql);
		Service temp;
		Dictionary dic;
		for (int i = 0;i < list.size();i++){
			temp = (Service)list.get(i);
			for (int j = 0;j < serviceType.size();j++){
				dic = (Dictionary)serviceType.get(j);
				if (temp.getService_type().getDictionary_id().equals(dic.getDictionary_id())){
					temp.getService_type().setDictionary_value(dic.getDictionary_value());
				}
			}
		}
		Iterator<Service> iter = list.iterator();
		while(iter.hasNext()){
			temp = iter.next();
			if (!temp.getService_status().equals("已分配")){
				iter.remove();
			}
		}
		return list;
	}

	@Override
	public List findAllocatedService(String clientName, String outline,
		String type, Date create_date,String clientManager_id) {
		String hql;
		List list;
		String status = "已分配";
		if (create_date == null){
			hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
					+ "and SERVICE_OUTLINE like '%"+outline+"%' "
					+ "and SERVICE_TYPE like '%"+type+"%' "
				    + "and SERVICE_STATUS like '%"+status+"%' "
				    + "and SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";
			list=getHibernateTemplate().find(hql);
		}else{
			Calendar c = Calendar.getInstance();
			c.setTime(create_date); 
			c.add(c.HOUR, 23);
			c.add(c.MINUTE, 59);
			c.add(c.SECOND, 59);
			Date newCreateDate = c.getTime();
			 hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
					+ "and SERVICE_OUTLINE like '%"+outline+"%' "
					+ "and SERVICE_TYPE like '%"+type+"%' "
					+ "and SERVICE_CREATE_DATE between ? and ? "
				    + "and SERVICE_STATUS like '%"+status+"%' "
			        + "and SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";
			 Object[] params = new Object[]{create_date,newCreateDate};
			 list=getHibernateTemplate().find(hql, params);
		}
		return list;
	}
	
	@Override
	public List findDealedService(String clientName, String outline,
			String type, Date create_date, String clientManager_id) {
		   String hql;
	       List list;
		   String status = "已处理";
			if (create_date == null){
				hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
						+ "and SERVICE_OUTLINE like '%"+outline+"%' "
						+ "and SERVICE_TYPE like '%"+type+"%' "
					    + "and SERVICE_STATUS like '%"+status+"%' "
					    + "and SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";
				list=getHibernateTemplate().find(hql);
			}else{
				Calendar c = Calendar.getInstance();
				c.setTime(create_date); 
				c.add(c.HOUR, 23);
				c.add(c.MINUTE, 59);
				c.add(c.SECOND, 59);
				Date newCreateDate = c.getTime();
				 hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
						+ "and SERVICE_OUTLINE like '%"+outline+"%' "
						+ "and SERVICE_TYPE like '%"+type+"%' "
						+ "and SERVICE_CREATE_DATE between ? and ? "
					    + "and SERVICE_STATUS like '%"+status+"%' "
				        + "and SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";
				 Object[] params = new Object[]{create_date,newCreateDate};
				 list=getHibernateTemplate().find(hql, params);
			}
			return list;
	}

	@Override
	public List findDealedAll(List<Dictionary> serviceType,
			String clientManager_id) {
		String hql = "from Service where SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";	
		List<Service> list = this.getHibernateTemplate().find(hql);
		Service temp;
		Dictionary dic;
		for (int i = 0;i < list.size();i++){
			temp = (Service)list.get(i);
			for (int j = 0;j < serviceType.size();j++){
				dic = (Dictionary)serviceType.get(j);
				if (temp.getService_type().getDictionary_id().equals(dic.getDictionary_id())){
					temp.getService_type().setDictionary_value(dic.getDictionary_value());
				}
			}
		}
		Iterator<Service> iter = list.iterator();
		while(iter.hasNext()){
			temp = iter.next();
			if (!temp.getService_status().equals("已处理")){
				iter.remove();
			}
		}
		return list;
	}
	@Override
	public String searchByTypeAndYear(String dictionary_id, String search_year){
		Calendar c = Calendar.getInstance();
		c.set(Integer.parseInt(search_year),1,1);	
		Date begin = c.getTime();
		
		c.set(Integer.parseInt(search_year),12,31);
		Date end = c.getTime();
		
		String hql = "SELECT COUNT(*) AS NUM "
				+ "FROM Service "
				+ "WHERE SERVICE_TYPE = ? "
				+ "and service_create_date between ? AND ? "
				+ "GROUP BY SERVICE_TYPE";
		Object[] params = new Object[]{dictionary_id,begin,end};
		List results = getHibernateTemplate().find(hql, params);

		if(results.size() == 0)
			return "0";
		else
			return (long)results.get(0)+"";
	}

	@Override
	public List findArchivedAll(List<Dictionary> serviceType,
			String clientManager_id) {
		String hql = "from Service where SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";	
		List<Service> list = this.getHibernateTemplate().find(hql);
		Service temp;
		Dictionary dic;
		for (int i = 0;i < list.size();i++){
			temp = (Service)list.get(i);
			for (int j = 0;j < serviceType.size();j++){
				dic = (Dictionary)serviceType.get(j);
				if (temp.getService_type().getDictionary_id().equals(dic.getDictionary_id())){
					temp.getService_type().setDictionary_value(dic.getDictionary_value());
				}
			}
		}
		Iterator<Service> iter = list.iterator();
		while(iter.hasNext()){
			temp = iter.next();
			if (!temp.getService_status().equals("已归档")){
				iter.remove();
			}
		}
		return list;
	}

	@Override
	public List findArchivedService(String clientName, String outline,
			String type, Date create_date, String clientManager_id) {
		   String hql;
	       List list;
		   String status = "已归档";
			if (create_date == null){
				hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
						+ "and SERVICE_OUTLINE like '%"+outline+"%' "
						+ "and SERVICE_TYPE like '%"+type+"%' "
					    + "and SERVICE_STATUS like '%"+status+"%' "
					    + "and SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";
				list=getHibernateTemplate().find(hql);
			}else{
				Calendar c = Calendar.getInstance();
				c.setTime(create_date); 
				c.add(c.HOUR, 23);
				c.add(c.MINUTE, 59);
				c.add(c.SECOND, 59);
				Date newCreateDate = c.getTime();
				 hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
						+ "and SERVICE_OUTLINE like '%"+outline+"%' "
						+ "and SERVICE_TYPE like '%"+type+"%' "
						+ "and SERVICE_CREATE_DATE between ? and ? "
					    + "and SERVICE_STATUS like '%"+status+"%' "
				        + "and SERVICE_CLIENTMANAGE = '"+clientManager_id+"' ";
				 Object[] params = new Object[]{create_date,newCreateDate};
				 list=getHibernateTemplate().find(hql, params);
			}
			return list;
	}

	@Override
	public List findArchivedAllBySaleM(List<Dictionary> serviceType) {
		String hql = "from Service ";	
		List<Service> list = this.getHibernateTemplate().find(hql);
		Service temp;
		Dictionary dic;
		for (int i = 0;i < list.size();i++){
			temp = (Service)list.get(i);
			for (int j = 0;j < serviceType.size();j++){
				dic = (Dictionary)serviceType.get(j);
				if (temp.getService_type().getDictionary_id().equals(dic.getDictionary_id())){
					temp.getService_type().setDictionary_value(dic.getDictionary_value());
				}
			}
		}
		Iterator<Service> iter = list.iterator();
		while(iter.hasNext()){
			temp = iter.next();
			if (!temp.getService_status().equals("已归档")){
				iter.remove();
			}
		}
		return list;
	}

	@Override
	public List findArchivedServiceBySaleM(String clientName, String outline,
			String type, Date create_date) {
		 String hql;
	       List list;
		   String status = "已归档";
			if (create_date == null){
				hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
						+ "and SERVICE_OUTLINE like '%"+outline+"%' "
						+ "and SERVICE_TYPE like '%"+type+"%' "
					    + "and SERVICE_STATUS like '%"+status+"%' ";
				list=getHibernateTemplate().find(hql);
			}else{
				Calendar c = Calendar.getInstance();
				c.setTime(create_date); 
				c.add(c.HOUR, 23);
				c.add(c.MINUTE, 59);
				c.add(c.SECOND, 59);
				Date newCreateDate = c.getTime();
				 hql = "from Service where SERVICE_CLIENT like '%"+clientName+"%' "
						+ "and SERVICE_OUTLINE like '%"+outline+"%' "
						+ "and SERVICE_TYPE like '%"+type+"%' "
						+ "and SERVICE_CREATE_DATE between ? and ? "
					    + "and SERVICE_STATUS like '%"+status+"%' ";        
				 Object[] params = new Object[]{create_date,newCreateDate};
				 list=getHibernateTemplate().find(hql, params);
			}
			return list;
	}

}
