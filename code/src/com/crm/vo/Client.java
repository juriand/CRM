
package com.crm.vo;


import java.util.Set;

public class Client {
    private String client_id;
    private String client_name;
    
    private Dictionary client_area;
    private User client_clientmanage;//客户经理
    private Dictionary client_level;//客户等级
    
	private String client_csr;//客户满意度
    private String client_credit;//客户信用度
    private String client_address;
    private String client_postalcode;
    private String client_phone;
    private String client_fax;
    private String client_site;//网站
    private String client_bern;//营业执照注册号
    private String client_corporation;//法人
    private double client_regcapital;//注册资金
    private double client_annualsales;//年营业额
    private String client_bank;
    private String client_bankaccount;
    private String client_landtaxregnum;//地税登记号
    private String client_nationtaxregnum;//国税登记号
    private double client_totalMoney;
    
    private Set<Contact> contacts;
    private Set<CommuHistory> commuhistorys;
    private Set<Order> orders;
    
    public Client(){
    	
    }
	public Client(String name) {
		this.client_name = name;
	}
	public Set<CommuHistory> getCommuhistorys() {
		return commuhistorys;
	}
	public void setCommuhistorys(Set<CommuHistory> commuhistorys) {
		this.commuhistorys = commuhistorys;
	}
	public Set<Contact> getContacts() {
		return contacts;
	}
	public void setContacts(Set<Contact> contacts) {
		this.contacts = contacts;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public String getClient_name() {
		return client_name;
	}
	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}
	public Dictionary getClient_area() {
		return client_area;
	}
	public void setClient_area(Dictionary client_area) {
		this.client_area = client_area;
	}
	
	public User getClient_clientmanage() {
		return client_clientmanage;
	}
	public void setClient_clientmanage(User client_clientmanage) {
		this.client_clientmanage = client_clientmanage;
	}
	public Dictionary getClient_level() {
		return client_level;
	}
	public void setClient_level(Dictionary client_level) {
		this.client_level = client_level;
	}
	public String getClient_csr() {
		return client_csr;
	}
	public void setClient_csr(String client_csr) {
		this.client_csr = client_csr;
	}
	public String getClient_credit() {
		return client_credit;
	}
	public void setClient_credit(String client_credit) {
		this.client_credit = client_credit;
	}
	public String getClient_address() {
		return client_address;
	}
	public void setClient_address(String client_address) {
		this.client_address = client_address;
	}
	public String getClient_postalcode() {
		return client_postalcode;
	}
	public void setClient_postalcode(String client_postalcode) {
		this.client_postalcode = client_postalcode;
	}
	public String getClient_phone() {
		return client_phone;
	}
	public void setClient_phone(String client_phone) {
		this.client_phone = client_phone;
	}
	public String getClient_fax() {
		return client_fax;
	}
	public void setClient_fax(String client_fax) {
		this.client_fax = client_fax;
	}
	public String getClient_site() {
		return client_site;
	}
	public void setClient_site(String client_site) {
		this.client_site = client_site;
	}
	public String getClient_bern() {
		return client_bern;
	}
	public void setClient_bern(String client_bern) {
		this.client_bern = client_bern;
	}
	public String getClient_corporation() {
		return client_corporation;
	}
	public void setClient_corporation(String client_corporation) {
		this.client_corporation = client_corporation;
	}
	public double getClient_annualsales() {
		return client_annualsales;
	}
	public void setClient_annualsales(double client_annualsales) {
		this.client_annualsales = client_annualsales;
	}
	public String getClient_bank() {
		return client_bank;
	}
	public void setClient_bank(String client_bank) {
		this.client_bank = client_bank;
	}
	public String getClient_bankaccount() {
		return client_bankaccount;
	}
	public void setClient_bankaccount(String client_bankaccount) {
		this.client_bankaccount = client_bankaccount;
	}
	public String getClient_landtaxregnum() {
		return client_landtaxregnum;
	}
	public void setClient_landtaxregnum(String client_landtaxregnum) {
		this.client_landtaxregnum = client_landtaxregnum;
	}
	public String getClient_nationtaxregnum() {
		return client_nationtaxregnum;
	}
	public void setClient_nationtaxregnum(String client_nationtaxregnum) {
		this.client_nationtaxregnum = client_nationtaxregnum;
	}
	public double getClient_regcapital() {
		return client_regcapital;
	}
	public void setClient_regcapital(double client_regcapital) {
		this.client_regcapital = client_regcapital;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public double getClient_totalMoney() {
		return client_totalMoney;
	}
	public void setClient_totalMoney(double client_totalMoney) {
		this.client_totalMoney = client_totalMoney;
	}

}

