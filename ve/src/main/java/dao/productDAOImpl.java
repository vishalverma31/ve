package dao;
import java.util.ArrayList;
import java.util.List;

import model.Product;
public class productDAOImpl implements productDAO{
List<Product> products;
	
	public productDAOImpl(){
	      products = new ArrayList<Product>();
	      Product product1 = new Product(1,"Acer One S1002-15XR (NT.G53SI.001)","Laptop",14459);
	      Product product2 = new Product(2,"HP Core i3 5th Gen","Laptop",27000);
	      
	      products.add(product1);
	      products.add(product2);
	      
	   }
	
	
	public List<Product> getAllProducts() {
		
		return products;
	}

	public Product getProductById() {
		// TODO Auto-generated method stub
		return null;
	}

	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		
	}
}
