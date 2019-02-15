package com.crm.action;

import java.util.List;
import java.util.Map;

import com.crm.service.ProductService;
import com.crm.vo.Product;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class ProductManageAction extends ActionSupport {
	
	private ProductService productService;
	
	private Product product;
	private String Product_id;
	
	public String list() {
		List findAll = productService.findAll();
		List<Product> pro_list = findAll;

		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("allproducts", pro_list);
		
		return "view";
	}
	
	public String search(){
		/**
		 * dictionary用于从前台接受参数
		 */
		List<Product> pro_list =productService.searchProducts(product.getProduct_name(), 
				product.getProduct_model(), product.getProduct_batch());
		Map<String, Object> request = (Map<String, Object>) ActionContext.getContext().get("request");
		request.put("allproducts", pro_list);
		
		return SUCCESS;
	}
	
	/**
	 * getters and setters
	 * @return
	 */
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public ProductService getProductService() {
		return productService;
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	
	
	
}

