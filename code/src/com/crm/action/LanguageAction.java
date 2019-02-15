package com.crm.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.crm.service.AuthorService;
import com.crm.service.ClientService;
import com.crm.service.DictionService;
import com.crm.service.LoseService;
import com.crm.service.RoleService;
import com.crm.service.SerService;
import com.crm.vo.Authority;
import com.crm.vo.Client;
import com.crm.vo.Dictionary;
import com.crm.vo.LoseRecord;
import com.crm.vo.Order;
import com.crm.vo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class LanguageAction extends ActionSupport{ 
	public String translate(){
		ActionContext context = ActionContext.getContext();  
		HttpServletRequest request = (HttpServletRequest) context.get(ServletActionContext.HTTP_REQUEST); 
		String request_locale = request.getParameter("request_locale");
		Locale LOCALE = (Locale)context.getSession().get("WW_TRANS_I18N_LOCALE");
		System.out.println(LOCALE.getCountry());
		System.out.println(request_locale);
		ActionContext.getContext().setLocale(LOCALE);
		
		return this.SUCCESS;
	}

}
