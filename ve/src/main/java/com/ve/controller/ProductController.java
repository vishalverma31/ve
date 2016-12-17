package com.ve.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import com.google.gson.Gson;
import com.ve.veBackend.dao.productDAO;
import com.ve.veBackend.DAOImpl.productDAOImpl;
import com.ve.veBackend.model.Product;

@Controller
public class ProductController {
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
}