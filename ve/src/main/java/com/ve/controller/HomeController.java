package com.ve.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.ve.veBackend.dao.productDAOImpl;
import com.ve.veBackend.model.Person;
import com.ve.veBackend.model.Product;
import com.ve.veBackend.dao.PersonDAO;
import com.ve.veBackend.dao.productDAO;



@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() 
	{
  	   return "index";
	}
	
	@Autowired
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
	 
	    @RequestMapping("/add")
		public String addProduct()
		{
			Product product=new Product();
			product.setProductName("Nikon D700");
			product.setPrice(105000);
			product.setCategory("Camera");
			productDAO.addProduct(product);
			return "redirect:/productpage";
		}
		
		@RequestMapping("/delete")
		public String deleteProduct()
		{
			Product product=productDAO.getProductById(1);
			productDAO.deleteProduct(product);
			return "redirect:/productpage";
		}
		
		@RequestMapping("/update")
		public String updateProduct()
		{
			Product product=productDAO.getProductById(0);
			product.setPrice(110000);
			productDAO.updateProduct(product);
			return "redirect:/productpage";
		}
		
		@RequestMapping("/home")
		 public String index(){
		   	 return "index";
		 }
		 @RequestMapping("/login")
		 public String login(){
	   	 return "Login";
	    }
		 
	    @RequestMapping("/register")
		 public String register(){
	   	 return "Register";
	    }
	    
	    @RequestMapping("/AboutUs")
		 public String AboutUs(){
	   	 return "AboutUs";
	    }
	    
	    @RequestMapping("/ContactUs")
		 public String ContactUs(){
	   	 return "ContactUs";
	    }
	    
	    @Autowired
		PersonDAO personDAO;
	    @RequestMapping("/AdminPage")
	    public ModelAndView AdminPage()
		{
			List<Person> listPersons=personDAO.listPersons();
			ModelAndView model=new ModelAndView("AdminPage");
			model.addObject("person",new Person());
			model.addObject("listPersons", listPersons);
			
			
			return model;
		}
		@RequestMapping(value= "/person/add", method = RequestMethod.POST)
		public String addPerson(@ModelAttribute("person") Person person,HttpServletRequest request)
		{
						
			
				if (person.getId() == 0) {
					personDAO.addPerson(person);
				} else {
					personDAO.updatePerson(person);
				}

				return "redirect:/AdminPage";
			
		}
		
		
		@RequestMapping("/remove/{id}")
		public String removePerson(@PathVariable("id") int id)
		{
			personDAO.removePerson(id);
			return "redirect:/AdminPage";
		}
		
		@RequestMapping("/edit/{id}")
		public String editPerson(@PathVariable("id") int id, Model model)
		{
			model.addAttribute("person", personDAO.getPersonById(id));
	        model.addAttribute("listPersons", personDAO.listPersons());
	        return "AdminPage";
		}
	    
}
