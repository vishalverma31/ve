package controller;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import dao.productDAOImpl;
import dao.productDAO;
import model.Product;


@Controller
public class controller1 {
	
	@RequestMapping("/")
	 public String home() {
   	 return "index";
		}
    
	
	 productDAO productDAO=new productDAOImpl();
	
	 @RequestMapping("/productpage")
	 public ModelAndView products()
	 {
		List<Product> products=productDAO.getAllProducts();
	 	String productList=new Gson().toJson(products);
	 	ModelAndView model=new ModelAndView("productpage");
	 	model.addObject("productList", productList);
	 	
	 	return model;
		
	 }
	
     
     @RequestMapping("/login")
	 public String login(){
    	 return "Login";
     }
	 
     @RequestMapping("/register")
	 public String register(){
    	 return "Register";
     }
}