package com.crm.dao;

import java.util.Date;
import java.util.List;

import com.crm.vo.Dictionary;


public interface DictionDao{
	public List findDiction(String type,String entry,String value);
	public List findAll();
	public void addDiction(Dictionary Diction);
	public void deleteDiction(Dictionary Diction);
	public void update(Dictionary Diction);
	public List view(String Dictionary_id);
	public List findValueByType(String Dictionary_type);
	public List<Dictionary> searchDictions(String dictionary_id, String dictionary_entry, String dictionary_type,
			String dictionary_value);
}
