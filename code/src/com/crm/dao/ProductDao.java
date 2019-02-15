package com.crm.dao;

import java.util.List;

import com.crm.vo.Product;


public interface ProductDao {
		public List findAll();
	    public List<Product> searchProducts(String Product_name, String Product_model, String Product_batch);
}
