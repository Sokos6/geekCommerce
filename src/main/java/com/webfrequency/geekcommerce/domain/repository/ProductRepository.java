package com.webfrequency.geekcommerce.domain.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;
import com.webfrequency.geekcommerce.domain.Product;


public interface ProductRepository {

	List <Product> getAllProducts();
	List<Product> getProductsByCategory(String category);
	Set<Product> getProductsByFilter(Map<String, List<String>> filterParams);
	
	Product getProductById(String productId);
	
	public void addProduct(Product product);
	
}
