package com.crm.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.crm.vo.Dictionary;
import com.crm.vo.Product;

	public class ProductDaoImpl extends HibernateDaoSupport implements ProductDao{

		@Override
		public List findAll() {
			String hql = "from Product";
			List<Product> pro_list = this.getHibernateTemplate().find(hql);
			return pro_list;
		}

		
		
		@Override
		 public List<Product> searchProducts(String Product_name, String Product_model, String Product_batch){
			 
			String hql  = this.generateHql(Product_name, Product_model, Product_batch);
			List<Product> list = this.getHibernateTemplate().find(hql);
			return list;
		}
		
		/**
		 * 通过传入的参数整合hql语句
		 * @param Product_name
		 * @param Product_model
		 * @param Product_batch
		 * @return
		 */
		
		public String generateHql(String Product_name, String Product_model, String Product_batch) {
			String hql = "from Product";
			List<Boolean> filled_array = new ArrayList<Boolean>();
			filled_array.add(filled(Product_name));
			filled_array.add(filled(Product_model));
			filled_array.add(filled(Product_batch));
			List<String> params = new ArrayList<String>();
			params.add(Product_name);
			params.add(Product_model);
			params.add(Product_batch);
			boolean if_and = false;
			for(int i=0;i<filled_array.size();i++){
				if(filled_array.get(i)){
					if(!if_and){
						hql += " where "+params.get(i)+"='"+params.get(i)+"'";
						if_and = true;
					}else{
						hql += " and "+params.get(i)+"='"+params.get(i)+"'";
					}
				}
			}
			return hql;
			
		}
		
		/**
		 * 判断字段是否有值，即是否从前台有输入
		 * @param str
		 * @return
		 */
		//看不懂zhe li
		public boolean filled(String str){
			if(str == null || str.equals("")){
				return false;
			}else{
				return true;
			}
		}

	}


