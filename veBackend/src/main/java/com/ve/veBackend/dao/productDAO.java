package com.ve.veBackend.dao;

import java.util.List;
import com.ve.veBackend.model.Product;

public interface productDAO {
	public List<Product> getAllProducts();
	public Product getProductById(int productId);
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(int productId);
	public List<Product> getAllProductsByCategory(String category);
}
