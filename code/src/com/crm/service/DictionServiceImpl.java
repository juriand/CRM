package com.crm.service;

import java.util.Date;
import java.util.List;

import com.crm.dao.DictionDao;
import com.crm.dao.OpporDao;
import com.crm.vo.Dictionary;
import com.crm.vo.Opportunity;

public class DictionServiceImpl implements DictionService{
	private DictionDao dictionDao;
	
	public void setDictionDao(DictionDao dictionDao) {
		this.dictionDao = dictionDao;
	}

	public DictionDao getDictionDao() {
		return dictionDao;
	}

	@Override
	public List findDiction(String type,String entry,String value) {
		List list = dictionDao.findDiction(type, entry, value);
		return list;
	}

	@Override
	public List findAll() {
		List list = dictionDao.findAll();
		return list;
	}

	@Override
	public void addDiction(Dictionary dictionary) {
		dictionDao.addDiction(dictionary);
	}

	@Override
	public void deleteDiction(Dictionary diction) {
		dictionDao.deleteDiction(diction);
	}

	@Override
	public List view(String id) {
		List list = dictionDao.view(id);
		return list;
	}

	@Override
	public void update(Dictionary dictionary) {
		dictionDao.update(dictionary);	
	}

	@Override
	public List<Dictionary> searchDictions(String dictionary_id, String dictionary_entry, String dictionary_type,
			String dictionary_value) {
		return dictionDao.searchDictions(dictionary_id, dictionary_entry, dictionary_type, 
				dictionary_value);
	}

	@Override
	public List<Dictionary> findValueByType(String string) {
		List list = dictionDao.findValueByType(string);
		return list;
	}
}


	