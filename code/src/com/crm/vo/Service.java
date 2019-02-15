package com.crm.vo;

import java.util.Date;

public class Service {
       private String service_id;
       private Dictionary service_type;
       private String service_outline;
       private String service_client;
       private String service_status;
       private String service_request;
       private User service_creator;
       private Date service_create_date;
       private User service_clientManager;
       private Date service_assign_date;
       private String service_handling;
       private User service_conductor;
       private Date service_handling_date;
       private String service_handling_result;
       private String service_satis_degree;
	public String getService_id() {
		return service_id;
	}
	public void setService_id(String service_id) {
		this.service_id = service_id;
	}
	
	public Dictionary getService_type() {
		return service_type;
	}
	public void setService_type(Dictionary service_type) {
		this.service_type = service_type;
	}
	public String getService_outline() {
		return service_outline;
	}
	public void setService_outline(String service_outline) {
		this.service_outline = service_outline;
	}
	
	public String getService_client() {
		return service_client;
	}
	public void setService_client(String service_client) {
		this.service_client = service_client;
	}
	public String getService_status() {
		return service_status;
	}
	public void setService_status(String service_status) {
		this.service_status = service_status;
	}
	public String getService_request() {
		return service_request;
	}
	public void setService_request(String service_request) {
		this.service_request = service_request;
	}
	public User getService_creator() {
		return service_creator;
	}
	public void setService_creator(User service_creator) {
		this.service_creator = service_creator;
	}
	public Date getService_create_date() {
		return service_create_date;
	}
	public void setService_create_date(Date service_create_date) {
		this.service_create_date = service_create_date;
	}
	public User getService_clientManager() {
		return service_clientManager;
	}
	public void setService_clientManager(User service_clientManager) {
		this.service_clientManager = service_clientManager;
	}
	public Date getService_assign_date() {
		return service_assign_date;
	}
	public void setService_assign_date(Date service_assign_date) {
		this.service_assign_date = service_assign_date;
	}
	public String getService_handling() {
		return service_handling;
	}
	public void setService_handling(String service_handling) {
		this.service_handling = service_handling;
	}
	public User getService_conductor() {
		return service_conductor;
	}
	public void setService_conductor(User service_conductor) {
		this.service_conductor = service_conductor;
	}
	public Date getService_handling_date() {
		return service_handling_date;
	}
	public void setService_handling_date(Date service_handling_date) {
		this.service_handling_date = service_handling_date;
	}
	public String getService_handling_result() {
		return service_handling_result;
	}
	public void setService_handling_result(String service_handling_result) {
		this.service_handling_result = service_handling_result;
	}
	public String getService_satis_degree() {
		return service_satis_degree;
	}
	public void setService_satis_degree(String service_satis_degree) {
		this.service_satis_degree = service_satis_degree;
	}
	
}