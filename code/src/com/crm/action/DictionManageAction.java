package com.crm.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.DictionService;
import com.crm.vo.Dictionary;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DictionManageAction extends ActionSupport {
	
	private DictionService dictionService;
	
	private Dictionary dictionary;
	private String dictionary_id;
	
	public String list() {
		List<Dictionary> dic_list = dictionService.findAll();

		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("allDictions", dic_list);
		
		return "view";
	}
	
	public String add(){
		dictionService.addDiction(dictionary);
		
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public String delete(){
		List<Dictionary> temp = dictionService.view(dictionary_id);
		Dictionary dictionary = temp.get(0);
		dictionService.deleteDiction(dictionary);
		List<Dictionary> dic_list = dictionService.findAll();
		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("allDictions", dic_list);
		
		
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public String update(){
		List<Dictionary> temp = dictionService.view(dictionary_id);
		Dictionary dictionary = temp.get(0);
		dictionService.update(dictionary);
		List<Dictionary> dic_list = dictionService.findAll();
		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("allDictions", dic_list);
		
		return SUCCESS;
	}
	@SuppressWarnings("unchecked")
	public String search(){
		/**
		 * dictionary用于从前台接受参数
		 */
		List<Dictionary> dic_list = dictionService.searchDictions(dictionary.getDictionary_id(), 
				dictionary.getDictionary_entry(), dictionary.getDictionary_type(), 
				dictionary.getDictionary_value());
		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("allDictions", dic_list);
		
		return SUCCESS;
	}
	
	/**
	 * getters and setters
	 * @return
	 */
	public Dictionary getDictionary() {
		return dictionary;
	}
	public void setDictionary(Dictionary dictionary) {
		this.dictionary = dictionary;
	}
	public DictionService getDictionService() {
		return dictionService;
	}
	public void setDictionService(DictionService dictionService) {
		this.dictionService = dictionService;
	}

	public String getDictionary_id() {
		return dictionary_id;
	}

	public void setDictionary_id(String dictionary_id) {
		this.dictionary_id = dictionary_id;
	}
	
	
	
	
}
