package com.crm.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Dictionary;

public class DictionDaoImpl extends HibernateDaoSupport implements DictionDao{

	@Override
	public List findValueByType(String type) {
		String hql = "from Dictionary where DICTIONARY_TYPE = '" + type + "'";
		
		List list = this.getHibernateTemplate().find(hql);
		
		return list;
	}

	@Override
	public List findDiction(String type, String entry, String value) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List findAll() {
		String hql = "from Dictionary";
		List<Dictionary> dic_list = this.getHibernateTemplate().find(hql);
		return dic_list;
	}

	@Override
	public void addDiction(Dictionary dictionary) {
		this.getHibernateTemplate().save(dictionary);
	}

	@Override
	public void deleteDiction(Dictionary dictionary) {
		this.getHibernateTemplate().delete(dictionary);
	}

	@Override
	public void update(Dictionary dictionary) {
		this.getHibernateTemplate().update(dictionary);
	}

	@Override
	public List view(String id) {
		String hql = "from Dictionary where OPPORTUNITY_ID = '"+id+"' ";
		System.out.println(hql);
		
		List list = this.getHibernateTemplate().find(hql);
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Dictionary> searchDictions(String dictionary_id, String dictionary_entry, String dictionary_type,
			String dictionary_value) {
		String hql  = this.generateHql(dictionary_id, dictionary_entry, dictionary_type, dictionary_value);
		List<Dictionary> list = this.getHibernateTemplate().find(hql);
		return list;
	}
	//查询库存
	/**
	 * 通过传入的参数整合hql语句
	 * @param dictionary_id
	 * @param dictionary_entry
	 * @param dictionary_type
	 * @param dictionary_value
	 * @return
	 */
	public String generateHql(String dictionary_id, String dictionary_entry, String dictionary_type,
			String dictionary_value) {
		String hql = "from Dictionry";
		List<Boolean> filled_array = new ArrayList<Boolean>();
		filled_array.add(filled(dictionary_id));
		filled_array.add(filled(dictionary_entry));
		filled_array.add(filled(dictionary_type));
		filled_array.add(filled(dictionary_value));
		List<String> params = new ArrayList<String>();
		params.add(dictionary_id);
		params.add(dictionary_entry);
		params.add(dictionary_type);
		params.add(dictionary_value);
		boolean if_and = false;
		for(int i=0;i<filled_array.size();i++){
			if(filled_array.get(i)){
				if(!if_and){
					hql += " where "+params.get(i)+"='"+params.get(i)+"'";
					if_and = true;
				}else{
					hql += " and "+params.get(i)+"='"+params.get(i)+"'";
				}
			}
		}
		return hql;
		
	}
	
	/**
	 * 判断字段是否有值，即是否从前台有输入
	 * @param str
	 * @return
	 */
	public boolean filled(String str){
		if(str == null || str.equals("")){
			return false;
		}else{
			return true;
		}
	}
	
}
