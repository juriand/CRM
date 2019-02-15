package com.crm.service;

import java.util.List;

import com.crm.dao.ProductDao;
import com.crm.vo.Product;

public class ProductServiceImpl implements ProductService{
	private ProductDao productDao;
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public ProductDao getProductDao() {
		return productDao;
	}


	@Override
	public List findAll() {
		List list = productDao.findAll();
		return list;
	}

	@Override
	public List<Product> searchProducts(String Product_name, String Product_model, String Product_batch) {
		return productDao.searchProducts(Product_name, Product_model, Product_batch);
	}

}


	