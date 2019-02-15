package com.crm.service;

import java.util.List;

import com.crm.vo.Dictionary;

public interface DictionService{
	public List findDiction(String type,String entry,String value);
	public List findAll();
	public void addDiction(Dictionary Diction);
	public void deleteDiction(Dictionary Diction);
	public void update(Dictionary Diction);
	public List view(String Dictionary_id);
	public List<Dictionary> searchDictions(String dictionary_id, String dictionary_entry, String dictionary_type,
			String dictionary_value);
	public List<Dictionary> findValueByType(String string);
}
