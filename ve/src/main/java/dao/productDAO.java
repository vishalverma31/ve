package dao;
import java.util.*;

import model.Product;
public interface productDAO {
	public List<Product> getAllProducts();
	public Product getProductById();
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(Product product);

}
